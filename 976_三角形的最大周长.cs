public class Solution
{
    public int LargestPerimeter(int[] nums)
    {
        Array.Sort(nums);
        for (int i = nums.Count() - 3; i >= 0; i--)
        {
            int a = nums[i];
            int b = nums[i + 1];
            int c = nums[i + 2];
            if (a + b > c) return a + b + c;
        }
        return 0;
    }
}