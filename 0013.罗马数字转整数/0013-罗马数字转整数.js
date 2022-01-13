/**
 * @param {string} s
 * @return {number}
 */
var romanToInt = function(s) {
    const map = {
        I: 1,
        V: 5,
        X: 10,
        L: 50,
        C: 100,
        D: 500,
        M: 1000
    }
    if (s.length === 0) return 0
    let sum = map[s[0]]
    for (let i = 1; i < s.length; i++) {
        const a = map[s[i]]
        const b = map[s[i - 1]]
        if (a > b) {
            sum += a - 2 * b
        } else {
            sum += a
        }
    }
    return sum
};