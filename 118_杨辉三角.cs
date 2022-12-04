public class Solution
{
    public IList<IList<int>> Generate(int numRows)
    {
        IList<IList<int>> triList = new List<IList<int>>();
        for (int i = 1; i <= numRows; i++)
        {
            var line = new List<int>();
            line.Add(1);
            for (int j = 1; j < i - 1; j++)
            {
                line.Add(triList[i - 2][j] + triList[i - 2][j - 1]);
            }
            if (i > 1) line.Add(1);
            triList.Add(line);
        }
        return triList;
    }
}