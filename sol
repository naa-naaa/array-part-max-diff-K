#include <iostream>
#include <vector>
#include <algorithm>
using namespace std;
class Solution {
public:
    int partitionArray(vector<int> nums, int k) {
        sort(nums.begin(), nums.end());
        int count = 0;
        int n = nums.size();

        int i = 0;
        while (i < n) {
            int minVal = nums[i];
            count++; // Start a new subsequence
            i++;

            while (i < n && nums[i] - minVal <= k) {
                i++; // Add to current subsequence
            }
        }

        return count;
    }
};

int main() {
    Solution sol;

    vector<int> nums = {3, 6, 1, 2, 5};
    int k = 2;

    int result = sol.partitionArray(nums, k);

    cout << "Minimum number of subsequences: " << result << endl;

    return 0;
}

