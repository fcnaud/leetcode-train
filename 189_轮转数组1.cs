/*
    一个经典的算法
    翻转整个数组，然后两边分别再翻转
*/

public class Solution
{
    public void Rotate(int[] nums, int k)
    {
        k = k % nums.Count();
        ReverseNum(nums, 0, nums.Count() - 1);
        ReverseNum(nums, 0, k - 1);
        ReverseNum(nums, k, nums.Count() - 1);
    }

    private void Swap(ref int a, ref int b)
    {
        (a, b) = (b, a);
    }

    private void ReverseNum(int[] nums, int start, int end)
    {
        while(start<end)
        {
            Swap(nums[start], nums[end]);
            start++;
            end--;
        }
    }
}