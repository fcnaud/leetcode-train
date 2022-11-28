/*
    动态规划

    dp[i][j] 表示下标为 0 - i 的数组元素分为 j 组是的最大平均和
    dp[i][j] 就等于 dp[x][j-1]（x取中间点）+ avg（x~i）的最大值

    注意缓存已经求得的值，注意细节边界，数据提前用前缀和处理一下。
*/

public class Solution
{
    public double LargestSumOfAverages(int[] nums, int k)
    {
        int[] prefix = new int[nums.Count()];
        for (int i = 0; i < nums.Count(); i++)
        {
            prefix[i] = (i == 0 ? 0 : prefix[i - 1]) + nums[i];
        }

        double[][] dp = new double[nums.Count()][];
        for (int i = 0; i < nums.Count(); i++)
        {
            dp[i] = new double[k + 1];
        }

        return GetDP(dp, prefix, nums.Count() - 1, k);

    }

    private double GetDP(double[][] dp, int[] prefix, int lastIndex, int groupCount)
    {
        if (dp[lastIndex][groupCount] > 0) return dp[lastIndex][groupCount];

        if (groupCount == 1)
        {
            return dp[lastIndex][groupCount] = GetAvg(prefix, 0, lastIndex);
        }

        double maxDp = 0;
        for (int mid = groupCount - 2; mid < lastIndex; mid++)
        {
            maxDp = Math.Max(maxDp, GetDP(dp, prefix, mid, groupCount - 1) + GetAvg(prefix, mid + 1, lastIndex));
        }
        return dp[lastIndex][groupCount] = maxDp;
    }

    private double GetAvg(int[] prefix, int start, int end)
    {
        return (double)(prefix[end] - (start == 0 ? 0 : prefix[start - 1])) / (end - start + 1);
    }
}