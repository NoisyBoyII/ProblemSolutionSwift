// You are given a 0-indexed string s that has lowercase English letters in its even indices and digits in its odd indices.

// There is a function shift(c, x), where c is a character and x is a digit, that returns the xth character after c.

// For example, shift('a', 5) = 'f' and shift('x', 0) = 'x'.
// For every odd index i, you want to replace the digit s[i] with shift(s[i-1], s[i]).

// Return s after replacing all digits. It is guaranteed that shift(s[i-1], s[i]) will never exceed 'z'.

 

// Example 1:

// Input: s = "a1c1e1"
// Output: "abcdef"



    func replaceDigits(_ s: String) -> String {
    let array = Array("abcdefghijklmnopqrstuvwxyz")
    let chAr = Array(s)
    var count = 1
    var string = ""
    while(count < chAr.count) {
        let index = Int(String(chAr[count]))
        let findIndex = array.firstIndex(of:chAr[count-1])
        let nextIndex = index! + findIndex!
        string += String(chAr[count-1]) + String(array[nextIndex])
        count += 2
    }
    if string.count != chAr.count {
        string += String(chAr[count-1])
    }
    return string
    }
