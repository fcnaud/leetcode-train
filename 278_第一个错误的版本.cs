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
        return BinarySearch(1, n);
    }

    public int BinarySearch(int left, int right)
    {
        if (left >= right) return left;

        int mid = left + (right - left) / 2;
        if (IsBadVersion(mid)) {
            return BinarySearch(left, mid);
        } else {
            return BinarySearch(mid+1, right);
        }
    }
}