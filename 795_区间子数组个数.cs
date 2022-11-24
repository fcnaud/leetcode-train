/*
    最终结果是，有在范围内的数并且都小于右区间的- 都小于左区间的
    遍历一遍，分开统计，需要注意中间计算 int 可能会溢出，所以我直接用了 long
*/


public class Solution {
    public int NumSubarrayBoundedMax(int[] nums, int left, int right) {
        long count = 0;
        long ans = 0;
        bool hasInRange = false;

        long countLessLeft = 0;
        long pickoutAns = 0;

        foreach(var item in nums)
        {
            if(item < left) countLessLeft++;
            if(item >= left)
            {
                if (countLessLeft != 0)
                {
                    pickoutAns += (countLessLeft + 1) * countLessLeft / 2;
                }
                countLessLeft = 0;
            }

            if(item <= right) count++;
            if(item >= left && item <= right) 
            {
                hasInRange = true;
            }


            if(item > right)
            {
                if(hasInRange && count != 0) {
                    ans += (count + 1) * count / 2;
                    ans -= pickoutAns;
                }
                pickoutAns = 0;
                hasInRange = false;
                count = 0;
            }
        }

        if (countLessLeft != 0)
        {
            pickoutAns += (countLessLeft + 1) * countLessLeft / 2;
        }
        if (hasInRange && count != 0) 
        {
            ans += (count + 1) * count / 2;
            ans -= pickoutAns;
        }

        return Convert.ToInt32(ans);
    }
}