// Write a function to find the longest common prefix string amongst an array of strings.

// If there is no common prefix, return an empty string "".

 

// Example 1:

// Input: strs = ["flower","flow","flight"]
// Output: "fl"



func longestCommonPrefix(_ strs: [String]) -> String {
    var dict = [Int:String]()
    var returnString = ""
    if strs.first == "" && strs.isEmpty {
        return ""
    }else if strs.count == 1 {
        return strs[0]
    }
    if let prefixStr = strs.first {
        for i in 1..<strs.count {
            let str = strs[i]
            var matchString = ""
            for (index,element) in str.enumerated() {
                let ch = prefixStr.index(prefixStr.startIndex, offsetBy: index)
                if ch < prefixStr.endIndex {
                    if prefixStr[ch] == element {
                        matchString += String(element)
//                        print(matchString)
                    }else {
                        break
                    }
                }else {
                    break
                }
            }
            if i == 1 {
                returnString = matchString
                dict[returnString.count] = matchString
            }else if returnString.contains(matchString) || matchString.contains(returnString) {
                dict[matchString.count] = matchString
            }else {
                return ""
            }
        }
    }
    let minValue = dict.keys.min()
    return dict[minValue ?? 0] ?? ""
}
