public class Solution
{
    public int MinOperations(int[] nums)
    {
        int lastNum = nums[0] + 1;
        int ans = 0;

        for (int i = 1; i < nums.Length; i++)
        {
            if (nums[i] < lastNum)
            {
                ans += (lastNum - nums[i]);
                lastNum++;
            }
            else
            {
                lastNum = nums[i] + 1;
            }
        }

        return ans;
    }
}