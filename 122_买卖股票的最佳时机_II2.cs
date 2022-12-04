/*
    动态规划 dp[i][0/1] 表示第 i 天有没有持有股票
    dp[i][0] = Max(dp[i-1][0], dp[i-1][1]+prices[i])
    dp[i][1] = Max(dp[i-1][1], dp[i-1][0]-prices[i])
*/
public class Solution
{
    public int MaxProfit(int[] prices)
    {
        int hold = -prices[0];
        int notHold = 0;

        for(int i=1; i<prices.Count(); i++)
        {
            (hold, notHold) = (Math.Max(hold, notHold-prices[i]), Math.Max(notHold, hold+prices[i]));
        }
        
        return Math.Max(hold, notHold);
    }
}