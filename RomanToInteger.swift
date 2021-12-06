// Roman numerals are represented by seven different symbols: I, V, X, L, C, D and M.

// Symbol       Value
// I             1
// V             5
// X             10
// L             50
// C             100
// D             500
// M             1000
// For example, 2 is written as II in Roman numeral, just two one's added together. 12 is written as XII, which is simply X + II. The number 27 is written as XXVII, which is XX + V + II.

// Roman numerals are usually written largest to smallest from left to right. However, the numeral for four is not IIII. Instead, the number four is written as IV. Because the one is before the five we subtract it making four. The same principle applies to the number nine, which is written as IX. There are six instances where subtraction is used:

// I can be placed before V (5) and X (10) to make 4 and 9. 
// X can be placed before L (50) and C (100) to make 40 and 90. 
// C can be placed before D (500) and M (1000) to make 400 and 900.
// Given a roman numeral, convert it to an integer.

// Swift Solution


func romanToInt(_ s: String) -> Int {
        let valuesDict = ["I":1,"V":5,"X":10,"L":50,"C":100,"D":500,"M":1000]
        let conArray = Array(s)
        var number = 0
    var index = 0
    while index < conArray.count {
            switch conArray[index] {
                case "I" :
                if(index+1 < conArray.count && conArray[index+1] == "V"){
                    number += 4
                    index += 1
                }else if (index+1 < conArray.count && conArray[index+1] == "X"){
                    number += 9
                    index += 1
                }else {
                    number += valuesDict[String(conArray[index])]!
                }
                case "V":
                number += valuesDict[String(conArray[index])]!
                case "X":
                if(index+1 < conArray.count && conArray[index+1] == "L"){
                    number += 40
                    index += 1
                }else if (index+1 < conArray.count && conArray[index+1] == "C"){
                    number += 90
                    index += 1
                }else {
                    number += valuesDict[String(conArray[index])]!
                }
                case "L":
                number += valuesDict[String(conArray[index])]!
                case "C":
                if(index+1 < conArray.count && conArray[index+1] == "D"){
                    number += 400
                    index += 1
                }else if (index+1 < conArray.count && conArray[index+1] == "M"){
                    number += 900
                    index += 1
                }else {
                    number += valuesDict[String(conArray[index])]!
                }
                case "D":
                number += valuesDict[String(conArray[index])]!
                case "M":
                number += valuesDict[String(conArray[index])]!
                default:
                break
            }
        index += 1
        }
        return number
    }
