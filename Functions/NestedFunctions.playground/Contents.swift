import UIKit

struct Pizza {
    let sauce: String
    let toppings: [String]
    let crust: String
}

class PizzaBuilder {
    
    func prepare() -> Pizza {
        
        func prepareSauce() -> String {
            return "Tomato Sauce"
        }
        
        func prepareCrust() -> String {
            return "Hand Tossed"
        }
        
        func prepareToppings() -> [String] {
            return ["Chicken", "Mushroom", "Onions"]
        }
        
        let crust = prepareCrust()
        let sauce = prepareSauce()
        let toppings = prepareToppings()
        
        return Pizza(sauce: sauce, toppings: toppings, crust: crust)
        
    }

}

let pizzaBuilder = PizzaBuilder()
let pizza = pizzaBuilder.prepare()
