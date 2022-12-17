public class Solution
{
    public int StrStr(string haystack, string needle)
    {
        var next = BuildKmpNext(needle);

        int i = 0, j = 0;

        while (i < haystack.Length && j < needle.Length)
        {
            if (j < 0 || haystack[i] == needle[j])
            {
                j++;
                i++;
            }
            else
            {
                j = next[j];
            }
        }

        if (j == needle.Length)
        {
            return i - j;
        }
        else
        {
            return -1;
        }
    }

    public int[] BuildKmpNext(string str)
    {
        int[] next = new int[str.Length];
        int ind = 0;
        int pre = -1;
        next[0] = -1;
        while (ind < str.Length - 1)
        {
            if (pre < 0 || str[ind] == str[pre])
            {
                next[++ind] = ++pre;
            }
            else
            {
                pre = next[pre];
            }
        }
        return next;
    }
}