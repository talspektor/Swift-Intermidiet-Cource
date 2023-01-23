
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

func getPosts(with url: URL, completion: @escaping (Result<[Post], NetworkError>) -> Void) {
    
    URLSession.shared.dataTask(with: url) { (data, _, error) in
        
        guard let data = data, error == nil else {
            completion(.failure(.invalidData))
            return
        }
        
        let posts = try? JSONDecoder().decode([Post].self, from: data)
        if let posts = posts {
            completion(.success(posts))
        } else {
            completion(.failure(.decodingError))
        }
    }
}

guard let url = URL(string: "https://jsonplaceholder.typicode.com/posts") else {
    throw NetworkError.badURL
}

getPosts(with: url) { (result) in
    switch result {
        case .success(let posts):
            print(posts)
        case .failure(let error):
            print(error)
    }
}







