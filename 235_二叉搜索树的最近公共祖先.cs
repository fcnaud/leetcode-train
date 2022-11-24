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
    除了利用搜索树的特点外，也可以利用搜索的方式找公共祖先
    236 就用 tarjan 也就是并查集的方式求一下
 */

public class Solution
{
    public TreeNode LowestCommonAncestor(TreeNode root, TreeNode p, TreeNode q)
    {
        if(root == null || root == p || root == q) return root;

        var left = LowestCommonAncestor(root.left, p, q);
        var right =  LowestCommonAncestor(root.right, p, q);

        if(left == null && right == null) return null;
        if(left == null) return right;
        if(right == null) return left;

        return root;
    }
}