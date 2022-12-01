/*
    最基本的二分查找，因为是确定找某一个值，而不是不小于，大于等于这种比较难处理的
    几乎可以不考虑边界问题
*/

public class Solution
{
    public int Search(int[] nums, int target)
    {
        return BinarySearch(nums, target, 0, nums.Count() - 1);
    }

    public int BinarySearch(int[] nums, int target, int left, int right)
    {
        if (left > right) return -1;
        int mid = (left + right) / 2;
        if (target < nums[mid])
        {
            return BinarySearch(nums, target, left, mid - 1);
        }
        else if (target > nums[mid])
        {
            return BinarySearch(nums, target, mid + 1, right);
        }
        else
        {
            return mid;
        }
    }
}