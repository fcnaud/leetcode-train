/*
    模拟器，有点类似于前缀和，都是利用下之前计算的结果
    fromLeftTo[i] 表示，把i左边的球都移到i需要的步数，
    fromRightTo 类似，正反都扫一遍，就能得到最终的结果
*/

public class Solution
{
    public int[] MinOperations(string boxes)
    {
        int[] fromLeftTo = new int[boxes.Length];
        int[] fromRightTo = new int[boxes.Length];

        int ball = 0;
        for (int i = 0; i < boxes.Length; i++)
        {
            fromLeftTo[i] = ball + (i == 0 ? 0 : fromLeftTo[i - 1]);
            ball += (boxes[i] == '0' ? 0 : 1);
        }

        ball = 0;
        for (int i = boxes.Length - 1; i >= 0; i--)
        {
            fromRightTo[i] = ball + (i == boxes.Length - 1 ? 0 : fromRightTo[i + 1]);
            ball += (boxes[i] == '0' ? 0 : 1);
        }

        int[] ans = new int[boxes.Length];
        for (int i = 0; i < boxes.Length; i++)
        {
            ans[i] = fromLeftTo[i] + fromRightTo[i];
        }
        return ans;
    }
}