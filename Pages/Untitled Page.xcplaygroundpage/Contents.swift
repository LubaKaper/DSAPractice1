import UIKit

var str = "Hello, playground"

var numbers = [1,2,3,4,5]
//  using .filter to find odd numbers
var oddNums = numbers.filter { $0 % 2 == 1 }
print(oddNums)

var squareNums = oddNums.map { $0 * $0 }
print(squareNums)

var sum = squareNums.reduce(0, +)
print(sum)
var result = numbers.filter { $0 % 2 == 1}
    .map { $0 * $0 }
    .reduce(0, +)
print(result)

// find all nums that end on 5
var diffNums = [1,4,5,36,45, 67, 55]
var numsThatEndAtFive = diffNums.filter { $0 % 10 == 5}


// get rid of all vowels with .filter
var str2 = "These are the voyages of the starship Enterprise"
var vowels:Set<String> = ["a","e", "i", "o", "u","y", "A", "E", "I", "O", "U", "Y"]
var noVowels = str2.filter { !vowels.contains(String($0))}
print(noVowels)

// do recursive function for factorial calculation( multiplying number by each number below it once)
func factorial(_ n: Int) -> Int {
    if n == 1 {
        return 1
    } else {
        return n * factorial(n - 1)
    }
}
print(factorial(5))



//Find the First Repeating word in a String
//Input:  "hey how are you you doing how how
//OutPut: "How"

var str4 = "hey how are you you doing how how"
func firstRepeatingWord(_ str: String) -> String {
    let array = str.components(separatedBy: " ")
    var freqDict = [String: Int]()
    var repeatingWord = array[0]
    for word in array {
        freqDict[word] = (freqDict[word] ?? 0) + 1
    }
    for word in array {
        if freqDict[word]! >= 2 {
            repeatingWord = word
            break
        }
    }
    return repeatingWord
}
print(firstRepeatingWord(str4))

//Given an array of numbers, reset the array to put all the non-zero numbers in front of all the zeros in the array, then return the new array and the count of non-zero numbers.
