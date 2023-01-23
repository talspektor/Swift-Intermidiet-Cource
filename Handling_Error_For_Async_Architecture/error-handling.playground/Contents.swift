
import UIKit

struct Post: Decodable {
    let title: String
    let body: String
}

enum NetworkError: Error {
    case badURL
    case invalidData
    case decodingError
}

func getPosts(with url: URL, success: @escaping ([Post]) -> Void, failure: @escaping (NetworkError?) -> Void) {
    
    URLSession.shared.dataTask(with: url) { (data, _, error) in
        
        guard let data = data, error == nil else {
            failure(NetworkError.invalidData)
            return
        }
        
        let posts = try? JSONDecoder().decode([Post].self, from: data)
        if let posts = posts {
            success(posts)
        } else {
            failure(NetworkError.decodingError)
        }
    }
}

guard let url = URL(string: "https://jsonplaceholder.typicode.com/posts") else {
    throw NetworkError.badURL
}

getPosts(with: url) { (posts) in
    
} failure: { (error) in
    
}







