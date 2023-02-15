public class Solution {
    public int[] NumberOfPairs(int[] nums) {
        int[] cnt = new int[101];
        foreach(var num in nums)
        {
            cnt[num]++;
        }
        int op = 0;
        int remain = 0;
        for(int i=0; i<=100; i++)
        {
            if(cnt[i]%2 != 0) remain++;
            op += cnt[i]/2; 
        }
        return new int[]{op, remain};
    }
}