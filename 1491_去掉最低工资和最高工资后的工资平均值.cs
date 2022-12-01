public class Solution
{
    public double Average(int[] salary)
    {
        int max = 0;
        int min = int.MaxValue;
        int sum = 0;
        foreach (var item in salary)
        {
            sum += item;
            max = Math.Max(max, item);
            min = Math.Min(min, item);
        }

        return (double)(sum - max - min) / (salary.Count() - 2);
    }
}