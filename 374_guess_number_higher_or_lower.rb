// Forward declaration of guess API.
// @param num, your guess
// @return -1 if my number is lower, 1 if my number is higher, otherwise return 0

int guess(int num);

class Solution {
public:
    int guessNumber(int n) {
        long long up     = n;
        long long down   = 1;
        int iGuess = (up+down) / 2;
        
        while(true)
        {
            switch(guess(iGuess))
            {
                case 1:
                {
                    down   = iGuess + 1;
                    iGuess = (up+down) / 2;
                    break;
                }
                case -1:
                {
                    up     = iGuess - 1;
                    iGuess = (up+down) / 2;
                    break;
                }
                case 0: default:
                {
                    return iGuess;
                }
            }
        }
    }
};