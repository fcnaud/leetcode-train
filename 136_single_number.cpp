#include <vector>

using namespace std;

class solution 
{
    int singleNumber(vector<int>& nums)
    {
        int re = 0;
        for(auto i: nums) re^=i;
        return re;
    }
}
