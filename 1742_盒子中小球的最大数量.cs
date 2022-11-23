/*
    简单题，模拟
*/

public class Solution {
    public int CountBalls(int lowLimit, int highLimit) {
        int[] counts = new int[50];
        for(int i=lowLimit; i<=highLimit; i++)
        {
            counts[CountNum(i)]++;
        }

        int ans = 0;
        for(int i=0; i<50; i++)
        {
            if(counts[i] > ans) ans = counts[i];
        }
        return ans;
    }

    private int CountNum(int num)
    {
        int sum = 0;
        while(num > 0)
        {
            sum += num % 10;
            num /= 10;
        }
        return sum;
    }
}