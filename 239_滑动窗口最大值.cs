/*
    单调队列

    或者用优先队列实现也可以
*/

public class Solution
{
    public int[] MaxSlidingWindow(int[] nums, int k)
    {
        var ans = new List<int>(nums.Length - k + 1);
        var queue = new LinkedList<int>();
        for (int i = 0; i < nums.Length; i++)
        {
            EnQueue(queue, nums, i);
            if (i >= k - 1)
            {
                while(queue.First.Value<(i-k+1)) queue.RemoveFirst();
                ans.Add(nums[queue.First.Value]);
            }
        }
        return ans.ToArray();
    }

    private void EnQueue(LinkedList<int> queue, int[] nums, int ind)
    {
        while (queue.Count > 0 && nums[queue.Last.Value] <= nums[ind])
        {
            queue.RemoveLast();
        }
        queue.AddLast(ind);
    }
}