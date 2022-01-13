/**
 * @param {string[]} strs
 * @return {string}
 */
var longestCommonPrefix = function(strs) {
    let p = ''
    let t
    for (let i = 0; i < strs[0].length; i++) {
        t = strs[0][i]
        for (let j = 1; j < strs.length; j++) {
            if (strs[j][i] !== t) {
                return p
            }
        }
        p += t
    }
    return p
};