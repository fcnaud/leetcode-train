public class Solution
{
    public int MinimumLength(string s)
    {
        int l = 0;
        int r = s.Length - 1;
        while (l < r)
        {
            if (s[l] != s[r]) break;
            l++;
            while (l < r && s[l] == s[l - 1]) l++;
            r--;
            while (r > l && s[r] == s[r + 1]) r--;
        }

        return (r - l + 1);
    }
}