
import UIKit


let numbers = [1,2,3,5,6,7,10]
let names = ["Alex", "John", "Mary", "Steve"]


func firstLast(_ numbers: [Int]) -> (Int, Int) {
    return (numbers[0], numbers[numbers.count - 1] )
}

func firstLast(_ names: [String]) -> (String, String) {
    return (names[0], names[names.count - 1] )
}

let (first, last) = firstLast(numbers)

print(first)
print(last)

