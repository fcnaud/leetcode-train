/*
    第一眼看上去以为是dp，发现提示中有个最高幂也就是16的限制
    然后看到了每一个幂只能出现一次的限制，用搜索解决
    最终运行时间击败了 0%

    看了题解，是把这个数转换成 3 进制，看每一位上是否为 1 或者 0
    也就是类似于求 2 进制的方式，不断地除 3
*/

public class Solution
{
    public bool CheckPowersOfThree(int n)
    {
        return DFS(n, 0);
    }

    public bool DFS(int sum, int pow)
    {
        if (sum <= 0) return false;
        if (pow > 16) return false;

        int powNum = Pow(3, pow);
        if (powNum == sum) return true;

        return DFS(sum, pow + 1) || DFS(sum - powNum, pow + 1);
    }

    public int Pow(int n, int pow)
    {
        if (pow == 1) return n;
        if (pow == 0) return 1;
        int halfPow = Pow(n, pow / 2);
        if (pow % 2 == 0) return halfPow * halfPow;
        else return n * halfPow * halfPow;
    }
}