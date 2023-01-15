
import UIKit

protocol CarType {
    init(make: String, model: String)
}

final class Car: CarType {
    var make: String
    var model: String
    var color: String
    
    init(make: String, model: String, color: String) {
        self.make = make
        self.model = model
        self.color = color
    }
    
    /*required*/ convenience init(make: String, model: String) {
        self.init(make: make, model: model, color: "White")
    }
    
    /*
    class func makeCar(make: String, model: String) -> Self {
        let car = self.init(make: make, model: model)
        // setup engine
        // setup fuel lines
        // setup tires
        return car
    }*/
}

/*
class Tesla: Car {
    var range: Double
    
    override init(make: String, model: String, color: String) {
        self.range = 300
        super.init(make: make, model: model, color: color)
    }
}
 */










