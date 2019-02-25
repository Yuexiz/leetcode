// Given a 32-bit signed integer, reverse digits of an integer.
//
// Example 1:
//
//
// Input: 123
// Output: 321
//
//
// Example 2:
//
//
// Input: -123
// Output: -321
//
//
// Example 3:
//
//
// Input: 120
// Output: 21
//
//
// Note:
// Assume we are dealing with an environment which could only store integers within the 32-bit signed integer range: [−231,  231 − 1]. For the purpose of this problem, assume that your function returns 0 when the reversed integer overflows.
//


int reverse(int x) {
    static const int overflow = INT_MAX / 10;
    const char mod = x < 0 ? -10 : 10;
    int r = 0;

    while (x) {
        if (r > overflow || r < -overflow)
            return 0;
        r = (x % mod) + (r * 10);
        x /= 10;
    }

    return r;
}
