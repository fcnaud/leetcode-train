/*
    1. 
    因为需要随机删除，来一个双向链表
    还需要频率最高，来一个优先队列，优先队列里放一个list
    
    2.
    后来发现双向链表是多余的，不需要，直接用优先队列里维护的那个栈就行
    相当于是给每个数字创建了一个栈

    3.
    因为压进来的只是数字，所以连栈都不需要，直接记录个数量就行
*/

public class FreqStack
{
    private PriorityQueue<int, QueuePriority> priorityQueue;
    private Dictionary<int, int> dict;
    private int time = 0;

    public FreqStack()
    {
        priorityQueue = new PriorityQueue<int, QueuePriority>();
        dict = new Dictionary<int, int>();
    }

    public void Push(int val)
    {
        if (dict.ContainsKey(val)) {
            dict[val]++;
        } else {
            dict[val] = 1;
        }
        priorityQueue.Enqueue(val, new QueuePriority(dict[val], ++time));
    }

    public int Pop()
    {
        var topVal = priorityQueue.Dequeue();
        dict[topVal]--;
        return topVal;
    }
}

public class QueuePriority : IComparable<QueuePriority>
{
    int count;
    int time;

    public QueuePriority(int count, int time)
    {
        this.count = count;
        this.time = time;
    }

    public int CompareTo(QueuePriority other)
    {
        if (count != other.count)
        {
            return -count.CompareTo(other.count);
        }
        else
        {
            return -time.CompareTo(other.time);
        }
    }
}

/**
 * Your FreqStack object will be instantiated and called as such:
 * FreqStack obj = new FreqStack();
 * obj.Push(val);
 * int param_2 = obj.Pop();
 */