/*
    简单模拟
*/

public class Solution
{
    public int SecondHighest(string s)
    {
        int[] count = new int[10];
        foreach (var ch in s)
        {
            int num = ch - '0';
            if (num >= 0 && num <= 9)
            {
                count[num]++;
            }
        }

        int t = 2;
        for (int i = 9; i >= 0; i--)
        {
            if (count[i] > 0) t--;
            if (t == 0) return i;
        }

        return -1;
    }
}