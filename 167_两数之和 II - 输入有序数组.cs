/*
    因为是有序数组，直接双指针，从两边遍历
*/
public class Solution
{
    public int[] TwoSum(int[] numbers, int target)
    {
        int left = 0;
        int right = numbers.Count() - 1;

        while (left < right)
        {
            if (numbers[left] + numbers[right] < target)
            {
                left++;
            }
            else if (numbers[left] + numbers[right] > target)
            {
                right--;
            }
            else
            {
                return new int[] { left + 1, right + 1 };
            }
        }
        return null;
    }
}