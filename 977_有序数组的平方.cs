/*
    双指针问题
*/

public class Solution
{
    public int[] SortedSquares(int[] nums)
    {
        int[] ans = new int[nums.Count()];
        int index = nums.Count() - 1;
        int left = 0;
        int right = nums.Count() - 1;
        while (left <= right)
        {
            if (Math.Abs(nums[left]) > Math.Abs(nums[right]))
            {
                ans[index] = nums[left] * nums[left];
                left++;
            }
            else
            {
                ans[index] = nums[right] * nums[right];
                right--;
            }
            index--;
        }
        return ans;
    }
}