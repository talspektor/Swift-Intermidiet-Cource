
import UIKit

struct Course {
    let courseNumber: String
    let name: String
    let creditHours: Int
}

protocol Student {
    var courses: [Course] { get set }
    mutating func enroll(_ course: Course)
}

extension Student {
    mutating func enroll(_ course: Course) {
        courses.append(course)
    }
}

protocol VerifiedStudent: Student {
    func verify() -> Bool
}

extension VerifiedStudent {
    
    func enroll(_ course: Course) {
        if verify() {
            print("Enroll in course")
        }
    }
    
    func verify() -> Bool {
        return true
    }
    
}

struct InternationalStudent: VerifiedStudent {
    var courses: [Course] = []
}

let internationalStudent = InternationalStudent()
internationalStudent.enroll(Course(courseNumber: "1234", name: "Math", creditHours: 3))



