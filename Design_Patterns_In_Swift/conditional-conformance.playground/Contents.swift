
import UIKit


protocol CartProtocol {
    func computeTotal() -> Double
}

struct CartItem {
    let name: String
    let price: Double
}

struct Cart: CartProtocol {
    
    let items: [CartItem]
    
    func computeTotal() -> Double {
        return items.reduce(0) { (value, item) in
            return value + item.price
        }
    }
    
}

extension Array: CartProtocol where Element: CartProtocol {
    
    func computeTotal() -> Double {
        return self.reduce(0) { (value, cart) in
            return value + cart.computeTotal()
        }
    }
    
}

let stores = [
    [Cart(items: [CartItem(name: "Milk", price: 4.50), CartItem(name: "Eggs", price: 2.50)]),
     Cart(items: [CartItem(name: "Fish", price: 12.00)])],
    [Cart(items: [CartItem(name: "Apple Airpod", price: 164.50),
                  CartItem(name: "iMac", price: 2302.50)]), Cart(items: [CartItem(name: "iPhone 12", price: 1200.00)])]
]

print(stores.computeTotal()) 

//print(stores.comp)
