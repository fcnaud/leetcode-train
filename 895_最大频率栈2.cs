/*
    题解里有另一中思路，就是根据数量来入栈，每次都最大的那个栈中弹就行了
*/

public class FreqStack
{
    private Dictionary<int, Stack<int>> stackDict;
    private Dictionary<int, int> countDict;
    private int currentMaxStack = 0;

    public FreqStack()
    {
        stackDict = new Dictionary<int, Stack<int>>();
        countDict = new Dictionary<int, int>();
    }

    public void Push(int val)
    {
        if(countDict.ContainsKey(val)) {
            countDict[val]++;
        } else {
            countDict[val] = 1;
        }
        int count = countDict[val];
        currentMaxStack = Math.Max(currentMaxStack, count);

        if(!stackDict.ContainsKey(count))
        {
            stackDict[count] = new Stack<int>();
        }

        stackDict[count].Push(val);
    }

    public int Pop()
    {
        var val = stackDict[currentMaxStack].Pop();
        if(stackDict[currentMaxStack].Count()<=0) currentMaxStack--; 
        countDict[val]--;
        return val;
    }
}

/**
 * Your FreqStack object will be instantiated and called as such:
 * FreqStack obj = new FreqStack();
 * obj.Push(val);
 * int param_2 = obj.Pop();
 */