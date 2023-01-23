
import UIKit

// Equatable: ==
// Comparable: < >

enum Card: Comparable {
    case ace
    case king
    case queen
    
    static func <(lhs: Card, rhs: Card) -> Bool {
        switch(lhs, rhs) {
            case (king, ace): return true
            case (queen, king): return true
            case (queen, ace): return true
            default: return false
        }
    }
}


func lowest<T: Comparable>(list: [T]) -> T? {
    
    let sortedList = list.sorted {
        return $0 < $1
    }
    
    return sortedList.first
}

print(lowest(list: [4,5,6,1,200,-100, 999]))

print(lowest(list: ["b","c","a","z"]))

let ace = Card.ace
let queen = Card.queen

if queen < ace {
    print("queen < ace")
}

print(lowest(list: [Card.ace, Card.queen, Card.king])) 
