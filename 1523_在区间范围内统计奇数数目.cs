// 简单题

public class Solution
{
    public int CountOdds(int low, int high)
    {
        int count = high - low + 1;
        if (count % 2 == 0) return count / 2;
        else
        {
            if (low % 2 == 0) return (count - 1) / 2;
            else return (count + 1) / 2;
        }
    }
}