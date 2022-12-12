public class Solution
{
    public int BeautySum(string s)
    {
        int ans = 0;
        for (int i = 0; i < s.Length; i++)
        {
            int[] cnt = new int[26];
            for (int j = i; j < s.Length; j++)
            {
                cnt[s[j] - 'a']++;
                ans += cnt.Max() - cnt.Where(x => x > 0).Min();
            }
        }
        return ans;
    }
}