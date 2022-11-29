/*
    简单题，模拟
*/
public class Solution
{
    public int MinOperations(string s)
    {
        bool isOdd = true;
        int startOne = 0;
        int startZero = 0;

        foreach (var ch in s)
        {
            if (isOdd)
            {
                startOne += ch == '1' ? 0 : 1;
                startZero += ch == '1' ? 1 : 0;
            }
            else
            {
                startOne += ch == '1' ? 1 : 0;
                startZero += ch == '1' ? 0 : 1;
            }
            isOdd = !isOdd;
        }

        return Math.Min(startOne, startZero);
    }
}