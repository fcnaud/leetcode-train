/*
    搜索或者并查集
*/
public class Solution
{
    public bool ValidPath(int n, int[][] edges, int source, int destination)
    {
        var union = new Union(n);
        foreach (var edge in edges)
        {
            union.Merge(edge[0], edge[1]);
        }
        return union.Query(source, destination);
    }

    public class Union
    {
        private int[] par;

        public Union(int n)
        {
            par = new int[n];
            for (int i = 0; i < n; i++)
            {
                par[i] = -1;
            }
        }

        public bool Query(int a, int b)
        {
            return FindRoot(a) == FindRoot(b);
        }

        public void Merge(int a, int b)
        {
            int par_a = FindRoot(a);
            int par_b = FindRoot(b);
            if (par_a != par_b)
            {
                if (par_a < par_b)
                {
                    par[par_a] = par[par_a] + par[par_b];
                    par[par_b] = par_a;
                }
                else
                {
                    par[par_b] = par[par_a] + par[par_b];
                    par[par_a] = par_b;
                }
            }
        }

        public int FindRoot(int a)
        {
            while (par[a] >= 0)
            {
                a = par[a];
            }
            return a;
        }
    }
}