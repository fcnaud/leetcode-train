/*
轴对齐碰撞检测，用平行于x，y轴的矩形表示物体。

如何判断两个矩形是否相撞，可以通过分别判断x，y轴上的线段是否相交。



假设线段分别为 (a1,b1), (a2,b2)，判断线段相交

1. 可以根据 两个线段长度和的一半 和 两个线段中点构成的线段比较长短。
2. a2<b1 && a1<b2
3. min(b1, b2) > max(a1, a2)
*/
public class Solution
{
    public bool IsRectangleOverlap(int[] rec1, int[] rec2)
    {
        return IsLineOverlap2(rec1[0], rec1[2], rec2[0], rec2[2])
        && IsLineOverlap2(rec1[1], rec1[3], rec2[1], rec2[3]);
    }

    public bool IsLineOverlap(int x1Min, int x1Max, int x2Min, int x2Max)
    {
        double mid1 = (x1Max + x1Min) / 2.0d;
        double mid2 = (x2Max + x2Min) / 2.0d;
        double length1 = x1Max - x1Min;
        double length2 = x2Max - x2Min;

        return Math.Abs(mid1 - mid2) < ((length1 + length2) * 0.5d);
    }

    public bool IsLineOverlap1(int x1Min, int x1Max, int x2Min, int x2Max)
    {
        return (x2Min<x1Max) && (x1Min < x2Max);
    }

    public bool IsLineOverlap2(int x1Min, int x1Max, int x2Min, int x2Max)
    {
        return Math.Min(x1Max, x2Max) > Math.Max(x1Min, x2Min);
    }
}