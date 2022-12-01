// 简单题，数据结构的应用 set

public class Solution
{
    public bool ContainsDuplicate(int[] nums)
    {
        var set = new HashSet<int>();
        foreach (var num in nums)
        {
            if (!set.Add(num)) return true;
        }
        return false;
    }
}