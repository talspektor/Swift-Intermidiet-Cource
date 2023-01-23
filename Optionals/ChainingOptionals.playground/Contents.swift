
import UIKit

struct Grade {
    let gpa: Double?
    let letter: String?
}

struct Student {
    let firstName: String
    let lastName: String
    let grade: Grade?
}

let student = Student(firstName: "John", lastName: "Doe", grade: Grade(gpa: 3.2, letter: "B"))

/*
if let grade = student.grade {
    if let gpa = grade.gpa {
        //print(gpa)
    }
} */

print(student.grade?.gpa ?? "N/A")














