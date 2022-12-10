public class Solution
{
    public int ComputeArea(int ax1, int ay1, int ax2, int ay2, int bx1, int by1, int bx2, int by2)
    {
        int overlapArea = LineOverlapLength(ax1, ax2, bx1, bx2) * LineOverlapLength(ay1, ay2, by1, by2);

        return RectArea(ax1, ay1, ax2, ay2) + RectArea(bx1, by1, bx2, by2) - overlapArea;
    }

    public int LineOverlapLength(int s1, int e1, int s2, int e2)
    {
        return Math.Max(0, Math.Min(e1, e2) - Math.Max(s1, s2));
    }

    public int RectArea(int x1, int y1, int x2, int y2)
    {
        return (x2 - x1) * (y2 - y1);
    }
}