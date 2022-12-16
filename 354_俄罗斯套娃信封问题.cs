public class Solution
{
    public int MaxEnvelopes(int[][] envelopes)
    {
        int[] dp = new int[envelopes.Length];
        dp[0] = 1;
        
        for(int i=1; i<envelopes.Length; i++)
        {
            for(int j=0; j<i; j++)
            {
                if(envelopes[j][0]<envelopes[i][0] && envelopes[j][1]<envelopes[i][1])
                {
                    dp[i] = Math.Max(dp[i], dp[j]+1);
                }
            }
        }

        return dp.Last;
    }
}