public class Solution
{
    public int MinOperations(int[] nums1, int[] nums2)
    {

        int sum1 = nums1.Sum();
        int sum2 = nums2.Sum();

        if (sum1 == sum2) return 0;
        if (sum1 > sum2) return MinOperations(nums2, nums1);

        var cnt = new int[7];
        foreach (var num in nums1) cnt[6 - num]++;
        foreach (var num in nums2) cnt[num - 1]++;

        int diff = sum2 - sum1;
        int ans = 0;
        for (int step = 5; step > 0; step--)
        {
            while (cnt[step] > 0 && diff > 0)
            {
                ans++;
                diff -= step;
                cnt[step]--;
            }
            if (diff <= 0) return ans;
        }

        return -1;
    }
}