public class Solution {
    public bool SquareIsWhite(string coordinates) {
        return (coordinates[0]-'a' + coordinates[1]-'1') % 2 != 0;
    }
}