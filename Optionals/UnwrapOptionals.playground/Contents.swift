
import UIKit

struct Student {
    let firstName: String
    let lastName: String
    var middleName: String?
    var grade: String?
}

var student = Student(firstName: "John", lastName: "Doe")
student.middleName = "Johnson"
student.grade = "A"

/*
if let middleName = student.middleName, let grade = student.grade {
    print(middleName)
    print(grade)
} */

if let _ = student.grade {
    print("Student has been graded")
}

func displayStudent(student: Student) {
    
    guard let middleName = student.middleName,
          let grade = student.grade else {
        return
    }
    
    print(middleName, grade)
}

displayStudent(student: student)


