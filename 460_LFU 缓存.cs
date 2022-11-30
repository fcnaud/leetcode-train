/*
    参考 146 LRU 和 895 最大频率栈
    使用桶的思路，为每一个使用频次创建一个双向链表
*/
public class LFUCache
{
    private Dictionary<int, int> freqDict;
    private Dictionary<int, LinkedNode> itemDict;
    private Dictionary<int, LinkedList> listDict;
    private int capacity;
    private int count;
    private int minFreq;

    public LFUCache(int capacity)
    {
        this.capacity = capacity;
        freqDict = new Dictionary<int, int>();
        itemDict = new Dictionary<int, LinkedNode>();
        listDict = new Dictionary<int, LinkedList>();
        count = 0;
        minFreq = 0;
    }

    public int Get(int key)
    {
        if (itemDict.ContainsKey(key))
        {
            UpdateFreq(key);
            return itemDict[key].Value;
        }
        return -1;
    }

    public void Put(int key, int value)
    {
        if (capacity == 0) return;

        if (itemDict.ContainsKey(key))
        {
            UpdateFreq(key);
            var node = itemDict[key];
            node.Value = value;
        }
        else
        {
            if (count >= capacity)
            {
                var list = listDict[minFreq];
                var node = list.RemoveHead();
                itemDict.Remove(node.Key);
                freqDict.Remove(node.Key);
                count--;
            }

            var newNode = new LinkedNode(key, value);
            itemDict[key] = newNode;
            freqDict[key] = 1;
            if (!listDict.ContainsKey(1))
            {
                listDict[1] = new LinkedList();
            }
            listDict[1].AddLast(newNode);
            count++;
            minFreq = 1;
        }
    }

    private void UpdateFreq(int key)
    {
        int freq = 0;
        if (!freqDict.TryGetValue(key, out freq))
        {
            return;
        }

        LinkedNode node;
        if (!itemDict.TryGetValue(key, out node))
        {
            return;
        }

        LinkedList list;
        if (!listDict.TryGetValue(freq, out list))
        {
            return;
        }

        list.RemoveNode(node);
        if (freq == minFreq && list.Count == 0) minFreq = freq + 1;
        freqDict[key] = ++freq;

        LinkedList newList;
        if (!listDict.TryGetValue(freq, out newList))
        {
            listDict[freq] = new LinkedList();
        }

        listDict[freq].AddLast(node);
    }
}

public class LinkedNode
{
    public LinkedNode Pre;
    public LinkedNode Next;
    public int Value;
    public int Key;

    public LinkedNode(int key, int val)
    {
        Value = val;
        Key = key;
    }
}

public class LinkedList
{
    private LinkedNode Head;
    private LinkedNode Tail;

    private int count;
    public int Count => count;

    public LinkedList()
    {
        Head = new LinkedNode(0, 0);
        Tail = new LinkedNode(0, 0);

        Head.Next = Tail;
        Tail.Pre = Head;

        count = 0;
    }

    public LinkedNode RemoveHead()
    {
        if (Count <= 0) return null;
        return RemoveNode(Head.Next);
    }

    public LinkedNode RemoveLast()
    {
        if (Count <= 0) return null;
        return RemoveNode(Tail.Pre);
    }

    public LinkedNode RemoveNode(LinkedNode node)
    {
        var pre = node.Pre;
        var next = node.Next;

        pre.Next = next;
        next.Pre = pre;

        count--;

        return node;
    }

    public void AddLast(LinkedNode node)
    {
        node.Next = Tail;
        node.Pre = Tail.Pre;

        node.Pre.Next = node;
        Tail.Pre = node;

        count++;
    }
}

/**
 * Your LFUCache object will be instantiated and called as such:
 * LFUCache obj = new LFUCache(capacity);
 * int param_1 = obj.Get(key);
 * obj.Put(key,value);
 */