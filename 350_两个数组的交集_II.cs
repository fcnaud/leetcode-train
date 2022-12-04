/*
    哈希表
*/
public class Solution
{
    public int[] Intersect(int[] nums1, int[] nums2)
    {
        var cnt = new Dictionary<int, int>();
        foreach(var item in nums1)
        {
            if(!cnt.ContainsKey(item)) cnt[item] = 0;
            cnt[item]++;
        }

        var list = new List<int>();
        foreach(var item in nums2)
        {
            if(cnt.ContainsKey(item) && cnt[item]>0)
            {
                cnt[item]--;
                list.Add(item);
            }
        }

        return list.ToArray();
    }
}