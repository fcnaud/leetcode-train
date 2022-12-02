/* The isBadVersion API is defined in the parent class VersionControl.
      bool IsBadVersion(int version); */

/*
    求中间点，用 left+(right-left)/2
    (left+right)/2 可能会溢出
*/

public class Solution : VersionControl
{
    public int FirstBadVersion(int n)
    {
        int left = 1;
        int right = n;
        while (left < right)
        {
            int mid = left + (right - left) / 2;
            if (IsBadVersion(mid))
            {
                right = mid;
            }
            else
            {
                left = mid + 1;
            }
        }
        return left;
    }
}