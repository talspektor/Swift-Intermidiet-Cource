import UIKit

let hello: (String) -> () = { name in
    print("Hello \(name)!")
}

hello("Mary Doe")

let multiple: (Int, Int) -> Int = {
    $0 * $1
}

let result = pow(5,3)
print(result)


func getPosts(completion: @escaping ([String]) -> ())  {
    
    var posts: [String] = []
    
    DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
        posts = ["Hello World", "Introduction to Closures"]
        completion(posts)
    }
    
}

getPosts { (posts) in
    print(posts)
}
