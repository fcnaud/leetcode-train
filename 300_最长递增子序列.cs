/*
    动态规划，先写一个 n^2 的
*/
public class Solution
{
    public int LengthOfLIS(int[] nums)
    {
        int[] dp = new int[nums.Length];
        dp[0] = 1;

        for (int i = 1; i < nums.Length; i++)
        {
            dp[i] = 1;
            for (int j = 0; j < i; j++)
            {
                if (nums[j] < nums[i] && dp[j] + 1 > dp[i])
                {
                    dp[i] = dp[j] + 1;
                }
            }
        }

        int ans = 0;
        foreach (var item in dp)
        {
            ans = Math.Max(ans, item);
        }

        return ans;
    }
}