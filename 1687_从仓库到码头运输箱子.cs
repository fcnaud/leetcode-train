/*
    动态规划+单调队列

    暂时还没有理解，如何用单调队列进行优化。
    先实现一个直接用动态规划解的实现

    超时，还是用了单调队列进行优化
*/
public class Solution
{
    public int BoxDelivering(int[][] boxes, int portsCount, int maxBoxes, int maxWeight)
    {
        int length = boxes.Length;
        int[] w = new int[length + 1];
        int[] neg = new int[length + 1];

        for (int i = 1; i <= length; i++)
        {
            w[i] = w[i - 1] + boxes[i - 1][1];
            if (i > 1)
            {
                neg[i] = neg[i - 1] + (boxes[i - 1][0] == boxes[i - 2][0] ? 0 : 1);
            }
        }

        var list = new LinkedList<int>();
        list.AddLast(0);
        int[] dp = new int[length + 1];
        for (int i = 1; i <= length; i++)
        {
            while (list.First.Value < i - maxBoxes || w[i] - w[list.First.Value] > maxWeight)
            {
                list.RemoveFirst();
            }

            int j = list.First.Value;
            list.RemoveFirst();

            dp[i] = dp[j] + (neg[i] - neg[j + 1] + 2);

            if (i != length)
            {
                int cur = dp[i] - neg[i + 1];
                while (list.Count > 0 && cur <= dp[list.Last.Value] - neg[list.Last.Value + 1])
                {
                    list.RemoveLast();
                }
                list.AddLast(i);
            }
        }

        return dp[length];
    }
}