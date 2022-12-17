public class Solution
{
    public bool CanChoose(int[][] groups, int[] nums)
    {
        int start = 0;
        foreach (var line in groups)
        {
            int ind = Match(line, nums, start);
            if (ind < 0) return false;
            start = ind + line.Length;
        }
        return true;
    }

    public int Match(int[] pattern, int[] nums, int i)
    {
        int j = 0;
        int[] next = BuildNext(pattern);
        while (i < nums.Length && j < pattern.Length)
        {
            if (j < 0 || nums[i] == pattern[j])
            {
                i++; j++;
            }
            else
            {
                j = next[j];
            }
        }
        if (j == pattern.Length) return i - j;
        else return -1;
    }

    public int[] BuildNext(int[] nums)
    {
        int[] next = new int[nums.Length];
        int ind = 0;
        int pre = next[0] = -1;
        while (ind < next.Length - 1)
        {
            if (pre < 0 || nums[ind] == nums[pre])
            {
                next[++ind] = ++pre;
            }
            else
            {
                pre = next[pre];
            }
        }
        return next;
    }
}