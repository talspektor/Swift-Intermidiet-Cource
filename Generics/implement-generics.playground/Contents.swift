
import UIKit

struct Movie {
    let name: String
}

let numbers = [1,2,3,5,6,7,10]
let names = ["Alex", "John", "Mary", "Steve"]
let movies = [Movie(name: "Batman"), Movie(name: "Spiderman"), Movie(name: "Superman")]

func firstLast<T>(_ list: [T]) -> (T, T) {
    return (list[0], list[list.count - 1] )
}

let (first, last) = firstLast(movies)

print(first)
print(last)

