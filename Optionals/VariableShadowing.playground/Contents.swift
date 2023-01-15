
import UIKit

struct Student: CustomStringConvertible {
    
    var description: String {
        var studentDescription = "\(firstName) "
        
        if let middleName = middleName {
            studentDescription += "\(middleName)"
        }
        
        studentDescription += " \(lastName) "
        
        if let grade = grade {
            studentDescription += "\(grade)"
        }
        
        return studentDescription
    }
    
    let firstName: String
    let lastName: String
    let middleName: String?
    let grade: String?
}

let student = Student(firstName: "John", lastName: "Doe", middleName: "Smith", grade: "A")

print(student)












