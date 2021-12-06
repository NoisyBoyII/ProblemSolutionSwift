
// Given a string s containing just the characters '(', ')', '{', '}', '[' and ']', determine if the input string is valid.

// An input string is valid if:

// Open brackets must be closed by the same type of brackets.
// Open brackets must be closed in the correct order.
 

// Example 1:

// Input: s = "()"
// Output: true


func isValid(_ s: String) -> Bool {
        let valueDict = ["{":"}","[":"]","(":")"]
        var stack = [String]()
    if s.count == 1 {
        return false
    }
        for ele in s {
            if valueDict.keys.contains(String(ele)) {
                stack.append(String(ele))
            }else if valueDict.values.contains(String(ele)) {
                if !stack.isEmpty {
                    if String(ele) == valueDict[stack.last!] {
                        stack.popLast()
                    }else {
                        return false
                    }
                }else {
                    return false
                }
            }
            // print(stack)
        }
    return stack.count == 0 ? true: false
    }
