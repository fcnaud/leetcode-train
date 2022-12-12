/*
    tails[i]放长度为i+1的子序列的结尾，用二分法去维护 
*/
public class Solution
{
    public int LengthOfLIS(int[] nums)
    {
        int[] tails = new int[nums.Length];
        int tailsLen = 1;
        tails[0] = nums[0];

        for (int i = 1; i < nums.Length; i++)
        {
            if (nums[i] > tails[tailsLen - 1])
            {
                tails[tailsLen++] = nums[i];
                continue;
            }

            int left = 0;
            int right = tailsLen - 1;

            while (left < right)
            {
                int mid = left + (right - left) / 2;
                if (tails[mid] < nums[i])
                {
                    left = mid + 1;
                }
                else
                {
                    right = mid;
                }
            }

            tails[left] = nums[i];
        }

        return tailsLen;
    }
}