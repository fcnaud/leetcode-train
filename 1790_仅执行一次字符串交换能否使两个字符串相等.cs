/*
    简单题，但是太粗心了，提交了5次
*/
public class Solution
{
    public bool AreAlmostEqual(string s1, string s2)
    {
        int diffCount = 0;
        char ch1 = default, ch2 = default;
        for (int i = 0; i < s1.Length; i++)
        {
            if (s1[i] != s2[i])
            {
                diffCount++;
                if (diffCount == 1)
                {
                    ch1 = s1[i];
                    ch2 = s2[i];
                }
                else if (diffCount == 2)
                {
                    if (ch1 == s2[i] && ch2 == s1[i]) { }
                    else return false;
                }
                else
                {
                    return false;
                }
            }
        }
        if (diffCount == 2 || diffCount == 0) return true;
        return false;
    }
}