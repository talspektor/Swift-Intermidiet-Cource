
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

protocol VerifiedStudent where Self: Student {
    func verify() -> Bool
}

extension VerifiedStudent {
    
    func enroll(_ course: Course) {
        if verify() {
                print("Verified and Enrolled")
            }
    }
    
    func verify() -> Bool {
        return true
    }
    
}

struct InternationalStudent: Student, VerifiedStudent {
    var courses: [Course] = []
}

let internationalStudent = InternationalStudent()
internationalStudent.enroll(Course(courseNumber: "1234", name: "Math", creditHours: 3))






