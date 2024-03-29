/*
    最基本的二分查找，因为是确定找某一个值，而不是不小于，大于等于这种比较难处理的
    几乎可以不考虑边界问题
*/

public class Solution
{
    public int Search(int[] nums, int target)
    {
        int left = 0;
        int right = nums.Count() - 1;
        while (left <= right)
        {
            int mid = left + (right - left) / 2;
            if (target < nums[mid])
            {
                right = mid - 1;
            }
            else if (target > nums[mid])
            {
                left = mid + 1;
            }
            else
            {
                return mid;
            }
        }
        return -1;
    }
}