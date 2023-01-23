
import UIKit

// FORCE UNWRAPPING

struct Student {
    let firstName: String
    let lastName: String
    let grade: String?
}

let student = Student(firstName: "John", lastName: "Doe", grade: nil)

//print(student.grade!)

guard let url = URL(string: "aa bbb cc") else {
    fatalError("URL is not defined!")
}

print(url)





