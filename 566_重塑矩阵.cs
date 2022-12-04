public class Solution
{
    public int[][] MatrixReshape(int[][] mat, int r, int c)
    {
        int m = mat.Length;
        int n = mat[0].Length;
        if (m * n != r * c) return mat;

        int[][] newMat = new int[r][];
        for (int i = 0; i < r; i++) newMat[i] = new int[c];

        for (int i = 0; i < r; i++)
        {
            for (int j = 0; j < c; j++)
            {
                int cnt = i * c + j;
                newMat[i][j] = mat[cnt / n][cnt % n];
            }
        }
        return newMat;
    }
}