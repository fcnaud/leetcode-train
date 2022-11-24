/*
    求最大公约数，使用辗转相除法
*/

public class Solution
{
    public int FindGCD(int[] nums)
    {
        int max = nums[0];
        int min = nums[1];
        foreach(var item in nums)
        {
            if(max < item) max = item;
            if(min > item) min = item;
        }
        return GCD(max, min);
    }

    private int GCD(int a, int b)
    {
        return b == 0 ? a : GCD(b, a % b);
    }
}