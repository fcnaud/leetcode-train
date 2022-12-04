/*
    01背包的变种
    每种配料有选取0，1，2三种情况，可以看做2种价格相等的配料分别选或者不选
    dp[i][j] 表示第i个配料，在成本为j的情况下，能否成立

    dp[i][j] = dp[i-1][j] | dp[i-1][j-cost[i]]

    可以使用逆推来优化存储空间
*/

public class Solution {
    public int ClosestCost(int[] baseCosts, int[] toppingCosts, int target) {
        int minBaseCost = baseCosts.Min();
        int maxCost = 0;
        if(minBaseCost >= target) maxCost = minBaseCost;
        else maxCost = 2 * target - minBaseCost;
        
        bool[][] dp = new bool[30][];
        for(int i=0; i<dp.Count(); i++) {
            dp[i] = new bool[maxCost+1];
        }

        foreach(var baseItem in baseCosts) {
            if(baseItem <= maxCost)
                dp[0][baseItem] = true;
        }

        int ind = 1;
        foreach(var top in toppingCosts)
        {
            for(int times=0; times<2; times++)
            {
                for(int cost=0; cost<=maxCost; cost++)
                {
                    if(cost<top)
                    {
                        dp[ind][cost] = dp[ind-1][cost];
                    }
                    else
                    {
                        dp[ind][cost] = dp[ind-1][cost] | dp[ind-1][cost-top];
                    }
                }
                ind++;
            }
        }

        int ans = 0;
        int diff = int.MaxValue;
        for(int i=0; i<=maxCost; i++)
        {
            if(dp[ind-1][i])
            {
                if(Math.Abs(target-i) < diff)
                {
                    diff = Math.Abs(target-i);
                    ans = i;
                }
            }
        }

        return ans;
    }
}