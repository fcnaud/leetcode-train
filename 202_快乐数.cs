public class Solution
{
    public bool IsHappy(int n)
    {
        var set = new HashSet<int>();
        while (set.Add(n))
        {
            if (n == 1) return true;
            n = PowSum(n);
        }
        return false;
    }

    private int PowSum(int n)
    {
        if (n == 0) return 0;
        int res = 0;
        while (n > 0)
        {
            res += (n % 10) * (n % 10);
            n /= 10;
        }
        return res;
    }
}