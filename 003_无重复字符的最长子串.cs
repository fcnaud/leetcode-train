public class Solution
{
    public int LengthOfLongestSubstring(string s)
    {
        var dict = new Dictionary<int, int>();
        int startIndex = 0;
        int length = 0;
        int maxLength = 0;

        for (int i = 0; i < s.Length; i++)
        {
            var ch = s[i];

            if (dict.ContainsKey(ch) && dict[ch] >= startIndex)
            {
                maxLength = Math.Max(maxLength, length);

                length = i - dict[ch];
                startIndex = dict[ch] + 1;
            }
            else
            {
                length++;
            }
            dict[ch] = i;
        }

        return Math.Max(maxLength, length);
    }
}