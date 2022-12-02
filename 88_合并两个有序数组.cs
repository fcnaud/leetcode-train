/*
    就是归并的思路，不过要求在原数组的基础上处理
    反过来归并就可以了，半天都没想到
*/

public class Solution
{
    public void Merge(int[] nums1, int m, int[] nums2, int n)
    {
        int ind1 = m - 1;
        int ind2 = n - 1;
        int ind = (m + n) - 1;

        while (ind1 >= 0 && ind2 >= 0 && ind >= 0)
        {
            if (nums1[ind1] > nums2[ind2])
            {
                nums1[ind--] = nums1[ind1--];
            }
            else
            {
                nums1[ind--] = nums2[ind2--];
            }
        }

        while (ind2 >= 0)
        {
            nums1[ind2] = nums2[ind2--];
        }
    }
}