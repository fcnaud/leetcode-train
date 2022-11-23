/*
    LRU 缓存算法，数据结构问题

    1. 需要快速查询
    2. 需要随机删除

    双向链表 + 字典
*/

public class LRUCache {

    private int capacity;
    private LinkedList cacheList;
    private Dictionary<int, LinkedNode> dict;

    public LRUCache(int capacity) {
        this.capacity = capacity;

        cacheList = new LinkedList();
        dict = new Dictionary<int, LinkedNode>();
    }
    
    public int Get(int key) 
    {
        if(dict.ContainsKey(key))
        {
            var node = dict[key];

            cacheList.RemoveNode(node);
            cacheList.AddFirst(node);

            return node.value;
        }
        else
        {
            return -1;
        }
    }
    
    public void Put(int key, int value) {

        if(dict.ContainsKey(key))
        {
            var node = dict[key];

            cacheList.RemoveNode(node);
            node.value = value;
            cacheList.AddFirst(node);
        }
        else
        {
            var node = new LinkedNode(key, value);

            dict[key] = node;
            cacheList.AddFirst(node);
        }

        while(cacheList.Size > capacity)
        {
            var last = cacheList.Last();
            dict.Remove(last.key);
            cacheList.RemoveLast();
        }
    }
}

public class LinkedNode
{
    public LinkedNode Pre;
    public LinkedNode Next;
    public int key;
    public int value;

    public LinkedNode(int key, int value)
    {
        this.key = key;
        this.value = value;
    }
}

public class LinkedList
{
    private LinkedNode Head;
    private LinkedNode Tail;
    private int nodeCount;
    public int Size => nodeCount;

    public LinkedList()
    {
        Head = new LinkedNode(0, 0);
        Tail = new LinkedNode(0, 0);

        Head.Pre = null;
        Head.Next = Tail;

        Tail.Pre = Head;
        Tail.Next = null;

        nodeCount = 0;
    }

    public LinkedNode Last()
    {
        return Tail.Pre;
    }

    public LinkedNode First()
    {
        return Head.Next;
    }

    public void AddFirst(LinkedNode node)
    {
        AddNode(Head, Head.Next, node);
    }

    public void AddLast(LinkedNode node)
    {
        AddNode(Tail, Tail.Pre, node);
    }

    private void AddNode(LinkedNode pre, LinkedNode next, LinkedNode node)
    {
        node.Next = next;
        node.Pre = pre;

        pre.Next = next.Pre = node;

        nodeCount++;
    }

    public void RemoveFirst()
    {
        if(nodeCount > 0)
        {
            RemoveNode(Head.Next);
        }
    }

    public void RemoveLast()
    {
        if(nodeCount > 0)
        {
            RemoveNode(Tail.Pre);
        }
    }

    public void RemoveNode(LinkedNode node)
    {
        node.Pre.Next = node.Next;
        node.Next.Pre = node.Pre;

        nodeCount--;
    }
}

/**

 * Your LRUCache object will be instantiated and called as such:
 * LRUCache obj = new LRUCache(capacity);
 * int param_1 = obj.Get(key);
 * obj.Put(key,value);
 */