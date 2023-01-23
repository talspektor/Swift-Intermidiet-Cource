
import UIKit

struct Movie: Equatable {
    let name: String
}

let numbers = [1,2,3,5,6,7,10]
let names = ["Alex", "John", "Mary", "Steve"]
let movies = [Movie(name: "Batman"), Movie(name: "Spiderman"), Movie(name: "Superman")]

func findIndex<T: Equatable>(from list: [T], valueToFind: T) -> Int? {
    
    return list.firstIndex { (item) -> Bool in
        return item == valueToFind
    }
}

let batmanMovie = Movie(name: "Batman")

print(findIndex(from: movies, valueToFind: batmanMovie))
