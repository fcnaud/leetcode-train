public class Solution
{
    public int SearchInsert(int[] nums, int target)
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
        return left;
    }
}