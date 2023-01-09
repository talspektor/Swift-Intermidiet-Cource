import UIKit



struct Teacher {
    let name: String
    let courses: [String]
}

struct Student {
    let name: String
    let courses: [String]
    var grade: String?
}

let teacher = Teacher(name: "John Doe", courses: ["Math", "Science"])
let student = Student(name: "Patrick Hoffman", courses: ["Math", "History"])

let users: [Any] = [teacher, student]

for user in users {
    switch user {
        case let user as Student:
            print(user.grade ?? "")
        case let user as Teacher:
            print(user.courses)
        default:
            print("Not student or teacher")
    }
}

enum User {
    case teacher(Teacher)
    case student(Student)
}

let allUsers = [User.teacher(teacher), User.student(student)]

for user in allUsers {
    switch user {
        case .student(let student):
            print(student.grade ?? "")
        case .teacher(let teacher):
            print(teacher.courses)
    }
}
