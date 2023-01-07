
import UIKit


let names = ["Alex", "John", "Mary"]

var nameIterator = names.makeIterator()
while let name = nameIterator.next() {
    print(name)
}

/*
for name in names {
    print(name)
} */

/*
protocol IteratorProtocol {
    associatedtype Element
    
    mutating func next() -> Element?
} */

struct Countdown: Sequence {
    
    let start: Int
    
    func makeIterator() -> some IteratorProtocol {
        return CountdownIterator(self)
    }
}

struct CountdownIterator: IteratorProtocol {
    let countdown: Countdown
    var currentValue = 0
    
    init(_ countdown: Countdown) {
        self.countdown = countdown
        self.currentValue = countdown.start
    }
    
    mutating func next() -> Int? {
        if currentValue > 0 {
            let value = currentValue
            currentValue -= 1
            return value
        } else {
            return nil
        }
    }
}

let countdown = Countdown(start: 10)
for count in countdown {
    print(count)
}
