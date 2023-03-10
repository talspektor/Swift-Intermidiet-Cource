
import UIKit


let ratings = [4, 8.5, 9.5, 2, 6, 3, 5.5, 7, 2.8, 9.8, 5.9, 1.5]

let ratingsResult = ratings.reduce([:]) { (results: [String: Int], rating: Double) in
    var copy = results // <<< How can you make sure that copy is NOT created. Creating a lot of copies can reduce performance 
    switch rating {
        case 1..<4: copy["Very bad", default: 0] += 1
        case 4..<6: copy["Ok", default: 0] += 1
        case 6..<8: copy["Good", default: 0] += 1
        case 8..<11: copy["Excellent", default: 0] += 1
        default: break
    }
    
    return copy
}

let results = ratings.reduce(into: [:]) { (results: inout [String: Int], rating: Double)  in
    
    switch rating {
        case 1..<4: results["Very bad", default: 0] += 1
        case 4..<6: results["Ok", default: 0] += 1
        case 6..<8: results["Good", default: 0] += 1
        case 8..<11: results["Excellent", default: 0] += 1
        default: break
    }

}

print(results)








