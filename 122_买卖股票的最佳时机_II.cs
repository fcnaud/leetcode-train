/*
    向前遍历，找局部最优
    找低谷高峰
*/
public class Solution
{
    public int MaxProfit(int[] prices)
    {
        int buy = 0;
        int sum = 0;
        bool findLowest = true;

        for (int i = 1; i < prices.Count(); i++)
        {
            if (findLowest)
            {
                if (prices[i] > prices[i - 1])
                {
                    buy = prices[i - 1];
                    findLowest = false;
                }
            }
            else
            {
                if (prices[i] < prices[i - 1])
                {
                    sum += prices[i - 1] - buy;
                    findLowest = true;
                }
            }
        }

        if (!findLowest)
        {
            sum += prices[prices.Count() - 1] - buy;
        }

        return sum;
    }
}