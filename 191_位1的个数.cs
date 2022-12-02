public class Solution
{
    public int HammingWeight(uint n)
    {
        int ans = 0;
        while (n > 0)
        {
            ans += (n % 2 == 0 ? 0 : 1);
            n >>= 1;
        }
        return ans;
    }
}