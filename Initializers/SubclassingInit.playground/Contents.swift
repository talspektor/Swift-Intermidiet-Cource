
import UIKit

class Car {
    var make: String
    var model: String
    var color: String
    
    init(make: String, model: String, color: String) {
        self.make = make
        self.model = model
        self.color = color
    }
    
    convenience init(make: String, model: String) {
        self.init(make: make, model: model, color: "White")
    }
}

class Tesla: Car {
    var range: Double
    
    override init(make: String, model: String, color: String) {
        self.range = 300
        super.init(make: make, model: model, color: color)
    }
}










