
import UIKit

/*
class Ticket {
    
    var departure: String
    var arrival: String
    var price: Double
    
    init(departure: String, arrival: String, price: Double) {
        self.departure = departure
        self.arrival = arrival
        self.price = price
    }
}

class BuddyPass: Ticket {
    
}

class Economy: Ticket {
    
}

class FirstClass: Ticket {
    
    var meal: Bool
    
    init(departure: String, arrival: String, price: Double, meal: Bool) {
        self.meal = meal
        super.init(departure: departure, arrival: arrival, price: price)
    }
    
}

class Business: Ticket {
    
    var meal: Bool
    var chargingPorts: Bool
    
    init(departure: String, arrival: String, price: Double, meal: Bool, chargingPorts: Bool) {
        self.meal = meal
        self.chargingPorts = chargingPorts
        super.init(departure: departure, arrival: arrival, price: price)
    }
    
}

func checkIn(ticket: Ticket) {
    
    switch ticket {
        case let ticket as Economy:
            print(ticket)
        case let ticket as FirstClass:
            print(ticket)
        case let ticket as Business:
            print(ticket)
        default:
            print("Unidentified ticket!")
    }
    
} */

struct Economy {
    let departure: String
    let arrival: String
}

struct FirstClass {
    let departure: String
    let arrival: String
    let meal: Bool
}

struct Business {
    let departure: String
    let arrival: String
    let meal: Bool
    let chargingPorts: Bool
}

struct International {
    let departure: String
    let arrival: String
    let meal: Bool
    let chargingPorts: Bool
    let baggageAllowed: Bool
}

enum Ticket {
    case economy(Economy)
    case firstClass(FirstClass)
    case business(Business)
    case international(International)
}

let ticket = Ticket.business(Business(departure: "Houston", arrival: "Denver", meal: true, chargingPorts: true))

func checkIn(ticket: Ticket) {
    switch ticket {
        case .economy(let economy):
            print(economy)
        case .firstClass(let firstClass):
            print(firstClass)
        case .business(let business):
            print(business)
        case .international(let international):
            print(international)
    }
}
