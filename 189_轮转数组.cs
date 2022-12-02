/*
    我写的这个思路就是，分成 k 个循环来看
    i -> i+k -> i+2*k -> ..
    i+1 -> i+1+k...
    这样循环

    借一个长度为 k 的数组做一个辅助，因为最后的几个数字填到
    前边可能会覆盖前边的，导致错误

    时间复杂度是 O(n+k)，空间复杂度 O(k)

    看了题解，原来可以分成 gcd(n,k) 个循环
    是可以直接操作到所有的数字，也不用担心覆盖的问题
*/

public class Solution
{
    public void Rotate1(int[] nums, int k)
    {
        k = k % nums.Count();

        int[] pre = new int[k];
        for (int i = 0; i < k; i++)
        {
            int temp = nums[i];
            int j = i + k;
            while (j < nums.Count())
            {
                Swap(ref temp, ref nums[j]);
                j += k;
            }
            pre[j - nums.Count()] = temp;
        }
        for (int i = 0; i < k; i++)
        {
            nums[i] = pre[i];
        }
    }

    public void Rotate(int[] nums, int k)
    {
        k = k % nums.Count();
        int n = GCD(nums.Count(), k);

        for (int i = 0; i < n; i++)
        {
            int start = i;
            int temp = nums[i];
            int current = i;
            do
            {
                current += k;
                current %= nums.Count();
                Swap(ref temp, ref nums[current]);
            } while (start != current);
        }
    }

    private int GCD(int a, int b)
    {
        return b == 0 ? a : GCD(b, a % b);
    }

    private void Swap(ref int a, ref int b)
    {
        (a, b) = (b, a);
    }
}