public class Solution
{
    public int MaxProfit(int[] prices)
    {
        int min = prices[0];
        int ans = 0;
        for (int i = 1; i < prices.Count(); i++)
        {
            ans = Math.Max(ans, prices[i] - min);
            min = Math.Min(min, prices[i]);
        }
        return ans;
    }
}