/*
    模拟题
*/
public class Solution
{
    public string ReverseWords(string s)
    {
        int start = 0;
        bool findBlank = true;
        var chars = s.ToCharArray();
        for (int i = 0; i < chars.Length; i++)
        {
            if (findBlank)
            {
                if (chars[i] == ' ')
                {
                    findBlank = false;
                    ReverseWord(chars, start, i - 1);
                }
            }
            else
            {
                if (chars[i] != ' ')
                {
                    findBlank = true;
                    start = i;
                }
            }
        }
        if (findBlank) ReverseWord(chars, start, chars.Length - 1);
        return new string(chars);
    }

    public void ReverseWord(char[] s, int start, int end)
    {
        while (start < end)
        {
            (s[start], s[end]) = (s[end], s[start]);
            start++;
            end--;
        }
    }
}