
import UIKit

struct Student {
    let firstName: String?
    let lastName: String?
    
    
    var displayName: String? {
        switch (firstName, lastName) {
            case let (first?, last?): return "\(first) \(last)"
            case let (first?, nil): return first
            case let (nil, last?): return last
            default: return nil
        }
    }
}

let student = Student(firstName: "John", lastName: "Doe")

func createGreetingMessage(student: Student) -> String {
   let message = """
        Dear \(student.displayName ?? "Student"), Welcome to Swift University
    """
    return message
}

let message = createGreetingMessage(student: student)
print(message)












