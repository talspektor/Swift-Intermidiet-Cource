
import UIKit

enum ValidationError: Error {
    case noEmptyValueAllowed
    case invalidEmail
}

func validateEmail(_ email: String) throws {
    
    guard !email.isEmpty else {
        throw ValidationError.noEmptyValueAllowed
    }
    
    let pattern = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
    
    let emailPredicate = NSPredicate(format: "SELF MATCHES %@", pattern)
    let isValid = emailPredicate.evaluate(with: email)
    if !isValid {
        throw ValidationError.invalidEmail
    }
    
}

do {
    try validateEmail("")
    print("Email is valid")
} catch {
    print(error)
}

struct Email {
    let text: String
    
    init(_ text: String) throws {
        
        guard !text.isEmpty else {
            throw ValidationError.noEmptyValueAllowed
        }
        
        let pattern = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
        let emailPredicate = NSPredicate(format: "SELF MATCHES %@", pattern)
        
        let isValid = emailPredicate.evaluate(with: text)
        if isValid {
            self.text = text
        } else {
            throw ValidationError.invalidEmail
        }
    }
}

do {
    let email = try Email("johndoe@gmail.com")
    print(email)
} catch {
    print(error)
}
