/**
 * Definition for a binary tree node.
 * public class TreeNode {
 *     public int val;
 *     public TreeNode left;
 *     public TreeNode right;
 *     public TreeNode(int x) { val = x; }
 * }
 */

/*
    利用并查集去维护关系，查询公共祖先
    只是为了练习，只有一次查询，可以直接用 235 的搜索解法
*/

public class Solution
{
    public TreeNode LowestCommonAncestor(TreeNode root, TreeNode p, TreeNode q)
    {
        var union = new UnionFind();
        var visit = new Dictionary<TreeNode, bool>();
        return Tarjan(root, p, q, union, visit);
    }

    public TreeNode Tarjan(TreeNode root, TreeNode p, TreeNode q, UnionFind union, Dictionary<TreeNode, bool> visit)
    {
        if (root == null) {
            return null;
        }

        visit[root] = true;

        if (root.left != null)
        {
            var ans = Tarjan(root.left, p, q, union, visit);
            if (ans != null) return ans;
            union.Merge(root.left, root);
        }

        if (root.right != null)
        {
            var ans = Tarjan(root.right, p, q, union, visit);
            if (ans != null) return ans;
            union.Merge(root.right, root);
        }


        if (root == p && visit.ContainsKey(q) && visit[q])
        {
            return union.Find(q);
        }
        if (root == q && visit.ContainsKey(p) && visit[p])
        {
            return union.Find(p);
        }

        return null;
    }
}

public class UnionFind
{
    private Dictionary<TreeNode, TreeNode> dict;

    public UnionFind()
    {
        dict = new Dictionary<TreeNode, TreeNode>();
    }

    public void Merge(TreeNode from, TreeNode to)
    {
        dict[from] = to;
    }

    public TreeNode Find(TreeNode node)
    {
        while (dict.ContainsKey(node))
        {
            node = dict[node];
        }
        return node;
    }
}
