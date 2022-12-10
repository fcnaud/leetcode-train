public class Solution
{
    public bool IsPathCrossing(string path)
    {
        var pSet = new HashSet<Point>();
        int x = 0, y = 0;
        pSet.Add(new Point(0, 0));
        foreach (var dir in path)
        {
            switch (dir)
            {
                case 'N': y++; break;
                case 'S': y--; break;
                case 'E': x++; break;
                case 'W': x--; break;
            }

            if (!pSet.Add(new Point(x, y)))
            {
                return true;
            }
        }

        return false;
    }

    struct Point
    {
        public int x;
        public int y;
        public Point(int x, int y)
        {
            this.x = x;
            this.y = y;
        }
    }
}