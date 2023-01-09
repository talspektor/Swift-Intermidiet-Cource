
import UIKit

enum Level {
    case easy
    case medium
    case hard
}

struct Exam {
    
    var level: Level
    
    lazy private(set) var questions: [String] = {
        
        sleep(5)
        
        switch level {
            case .easy:
                return ["What is 1+2", "What is 1+2", "What is 2+2"]
            case .medium:
                return ["What is 11+22", "What is 11+22", "What is 32+42"]
            case .hard:
                return ["What is 122+332", "What is 441+255", "What is 266+250"]
        }
    }()
    
}

var exam = Exam(level: .easy)
//print(exam.questions)
var hardExam = exam
hardExam.level = .hard

print("[Hard Exam]")
print(hardExam.questions)

//print("wait for 1 second")
//sleep(1)
//print(exam.questions)



