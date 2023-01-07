import UIKit


let students = ["Alex", "Mary", "John", "Steven"]
let grades = [3.4, 2.8]

let pair = zip(students, grades)

for studentAndGrade in pair {
    print(studentAndGrade.0)
    print(studentAndGrade.1)
}
