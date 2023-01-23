
import UIKit

extension Date {
    static func fiveHoursFromNow() -> Date {
        return Date().addingTimeInterval(5 * 60 * 60)
    }
}

protocol AirlineTicket {
    var name: String { get }
    var departure: Date? { get set }
    var arrival: Date? { get set }
}

struct Economy: AirlineTicket {
    let name = "ECON"
    var departure: Date?
    var arrival: Date?
}

struct Business: AirlineTicket {
    let name = "BUS"
    var departure: Date?
    var arrival: Date?
}

struct First: AirlineTicket {
    let name = "FIRST"
    var departure: Date?
    var arrival: Date?
}

class CheckoutService {
    
    var tickets: [AirlineTicket]
    
    init(tickets: [AirlineTicket]) {
        self.tickets = tickets
    }
    
    func addTicket(_ ticket: AirlineTicket) {
        self.tickets.append(ticket)
    }
    
    func processTickets() {
        tickets.forEach {
            print($0)
        }
    }
    
}

let economyTickets = [Economy(departure: Date(), arrival: Date.fiveHoursFromNow())]

let service = CheckoutService(tickets: economyTickets)

service.addTicket(First(departure: Date(), arrival: Date.fiveHoursFromNow()))

service.processTickets()
