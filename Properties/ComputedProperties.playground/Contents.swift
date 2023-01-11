
import UIKit

struct CartItem {
    let name: String
    let price: Double
}

struct Cart {
    let items: [CartItem]
    
    var total: Double {
        items.reduce(0) {
            return $0 + $1.price
        }
    }
}

let items = [CartItem(name: "Bread", price: 4.50), CartItem(name: "Milk", price: 3.50), CartItem(name: "Pizza", price: 10.95)]

let cart = Cart(items: items)
print(cart.total)


/*
struct Workout {
    let startTime: Date
    let endTime: Date
    
    var timeElapsed: TimeInterval {
        endTime.timeIntervalSince(startTime)
    }
}

let start = Date()
sleep(5)
let end = Date()

let workout = Workout(startTime: start, endTime: end)
workout.timeElapsed
 */


