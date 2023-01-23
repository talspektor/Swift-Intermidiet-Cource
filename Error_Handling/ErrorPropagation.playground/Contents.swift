
import UIKit

struct Pizza {
    let dough: String
    let toppings: [String]
}

enum PizzaBuilderError: Error {
    case doughBurnt
    case noToppings(String)
}

struct PizzaBuilder {
    
    func prepare() -> Pizza? {
        
        do {
            let dough = try prepareDough()
            let toppings = try prepareToppings()
            // return pizza
            return Pizza(dough: dough, toppings: toppings)
        } catch {
            print("Unable to prepare pizza")
            return nil
        }
    }
    
    private func prepareDough() throws -> String {
        // prepare the dough
        
        throw PizzaBuilderError.doughBurnt
    }
    
    private func prepareToppings() throws -> [String] {
          
          // prepare the toppings
          
        throw PizzaBuilderError.noToppings("Chicken and onions are missing!")
      }
}
