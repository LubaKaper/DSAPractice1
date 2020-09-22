//: [Previous](@previous)

import Foundation


var cohorts = Array(repeating: [Int](), count: 7)

print(cohorts)

// Before JSONDecoder we needed to ise JSONSerialization to convert web api data to Swift objects

// Heterogeneous Arrays

var someArray = [1, 1.0]

// insert
var jobsApplied = ["Apple", "Pelaton", "Google"]

jobsApplied.insert("Facebook", at: 2)
print(jobsApplied)

// append
var companiesToApply = ["Houzz", "ZocDoc", "Stockpile"]

var newArr = jobsApplied + companiesToApply

jobsApplied.append(contentsOf: companiesToApply)

print(jobsApplied)

// remove
var anotherArr = [Int]()

// checks if array is empty
// if array is empty do not use .removeLast()!!! Always check
print(anotherArr.isEmpty)


if !anotherArr.isEmpty {
    anotherArr.removeLast()// does Not return optional
}

anotherArr.popLast()// returns oprional, do not need to guard



var names = ["Bob", "Sally", "John", "Heather"]

// searching

if let index = names.firstIndex(of: "John") { // O(n)
    print("found John at index \(index)")
    names.remove(at: index)
    names.insert("John Appleseed", at: index)
}

print(names)

// .contains: array is O(n), set is O(1)(hashable)

let numbers = [-5, 1, 6, 0, 12, -9, 23, 9]

if let minNumber = numbers.min() {
    print("min value of numbers id \(minNumber)")
}
if let maxNumber = numbers.max() {
    print("min value of numbers id \(maxNumber)")
}



// prefix
//suffix

let cohortss = [1.0, 2.0, 3.0, 4.0, 5.0, 6.0, 7.0]

let firstThreeCohorts = cohortss.prefix(3) // O(1)
print(firstThreeCohorts)

// suffix(end)

let startedInCohorts = cohortss.suffix(4) // O(1)
print(startedInCohorts)

let heteroGeneousArray: [Any] = [1,2, 4.7, "Greg", true]

for element in heteroGeneousArray {
    if let intValue = element as? Int {
        print("int: \(intValue)")
    }
    if let doubleValue = element as? Double {
         print("double: \(doubleValue)")
    }
    if let strValue = element as? String {
         print("str: \(strValue)")
    }
    if let boolValue = element as? Bool {
         print("bool: \(boolValue)")
    }
}

// review property list


// Stride

let namess = ["Beth", "Josh", "Nancy", "Quincy", "Mary"]

for index in stride(from: 0, through: namess.count - 1, by: 2) {
    print(namess[index])
}

for index in stride(from: namess.count - 1, through: 0, by: -1) {
    print(namess[index])
}

for multipleOfThree in stride(from: 3, to: 32, by: 3) {
    print(multipleOfThree)
}


var priorityList = ["Applying to jobs", "DSA", "Learning Advance Topics", "Independent Project", "Networking"]

priorityList.swapAt(0, priorityList.count - 1) // swaps inPlace
print(priorityList)



// partition

var ages = [7, 1, 34, 2, 23, 2, 4, 90, 34, 10]

let partitionIndex = ages.partition { $0 > 10 }
print(partitionIndex)
print(ages)
