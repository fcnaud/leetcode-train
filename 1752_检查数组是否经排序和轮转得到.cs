/*
    模拟题，注意边界。
*/

public class Solution
{
    public bool Check(int[] nums)
    {
        int life = 1;
        for (int i = 1; i < nums.Count(); i++)
        {
            if (nums[i] < nums[i - 1])
            {
                if (--life < 0) return false;
            }
        }
        if (life == 0)
        {
            return nums[nums.Count() - 1] <= nums[0];
        }
        return true;
    }
}