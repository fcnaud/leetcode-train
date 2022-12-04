/*
    双指针模拟
*/
public class Solution
{
    public void MoveZeroes(int[] nums)
    {
        int left = 0;
        int right = 0;

        while (right < nums.Count())
        {
            while (left < nums.Count() && nums[left] != 0)
            {
                left++;
            }

            right = Math.Max(right, left + 1);
            while (right < nums.Count() && nums[right] == 0)
            {
                right++;
            }

            if (left < nums.Count() && right < nums.Count())
            {
                nums[left] = nums[right];
                nums[right] = 0;
            }
        }
    }
}