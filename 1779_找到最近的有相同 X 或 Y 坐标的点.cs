// 简单模拟题
public class Solution
{
    public int NearestValidPoint(int x, int y, int[][] points)
    {
        int min = int.MaxValue;
        int ans = -1;
        for (int i = 0; i < points.Length; i++)
        {
            if (points[i][0] == x || points[i][1] == y)
            {
                int dis = Math.Abs(points[i][0] - x) + Math.Abs(points[i][1] - y);
                if (dis < min)
                {
                    min = dis;
                    ans = i;
                }
            }
        }
        return ans;
    }
}