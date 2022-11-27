/*
    一个模拟题，注意好判断条件
*/

public class Solution {
    public int ExpressiveWords(string s, string[] words) {
        int ans = 0;
        foreach(var item in words)
        {
            if(Judge(item, s)) ans++;
        }
        return ans;
    }

    private bool Judge(string a, string b)
    {
        int aLen = a.Length;
        int bLen = b.Length;
        int aIndex = 0;
        int bIndex = 0;
        int aCount = 1;
        int bCount = 1;

        while(aIndex < aLen && bIndex < bLen)
        {
            if(a[aIndex] == b[bIndex])
            {
                aCount = bCount = 1;
                while(++aIndex < aLen && a[aIndex] == a[aIndex-1]) { aCount++; }
                while(++bIndex < bLen && b[bIndex] == b[bIndex-1]) { bCount++; }

                if(aCount>bCount) return false;
                if(bCount<3 && aCount!=bCount) return false; 
            }
            else
            {
                return false;
            }
        }

        if(aIndex == aLen && bIndex == bLen) return true;
        return false;
    }
}