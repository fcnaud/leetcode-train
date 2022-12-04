public class Solution
{
    public int ArraySign(int[] nums)
    {
        int ans = 1;
        foreach (var num in nums)
        {
            if (num == 0) return 0;
            ans *= num < 0 ? -1 : 1;
        }
        return ans;
    }
}