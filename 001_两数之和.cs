/*
    利用哈希表的特性，做到 O(1) 的查询
*/
public class Solution
{
    public int[] TwoSum(int[] nums, int target)
    {
        var dict = new Dictionary<int, int>();

        for(int i=0; i<nums.Count(); i++) {
            dict[nums[i]] = i;
        }

        for(int i=0; i<nums.Count(); i++) {
            int needNum = target - nums[i];
            if(dict.ContainsKey(needNum)) {
                if(i!=dict[needNum]) {
                    return new int[2] { i, dict[needNum] };
                }
            }
        }
        
        return null;
    }
}