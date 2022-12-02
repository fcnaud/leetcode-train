public class Solution
{
    public int SubtractProductAndSum(int n)
    {
        int sum = 0;
        int? product = null;
        while (n > 0)
        {
            sum += n % 10;
            product = (product == null ? 1 : product.Value) * (n % 10);
            n /= 10;
        }
        return (product.Value - sum);
    }
}