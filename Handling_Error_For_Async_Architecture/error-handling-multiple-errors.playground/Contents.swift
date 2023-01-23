
import UIKit


struct Account: Codable {
    let balance: Double
}

struct Transaction: Codable {
    let from: Account
    let to: Account
    let amount: Double
}

enum AccountError: Error {
    case insufficientFunds
    case amountToLow
}

enum NetworkError: Error {
    case badURL
    case invalidData
    case decodingError
}

func transferFunds(url: URL, from: Account, to: Account, amount: Double, completion: @escaping (Result<String, Error>) -> Void) {
                    
    guard amount > 0 else {
        completion(.failure(AccountError.amountToLow))
        return
    }
    
    guard from.balance > amount else {
        completion(.failure(AccountError.insufficientFunds))
        return
    }
    
    var request = URLRequest(url: url)
    let transaction = Transaction(from: from, to: to, amount: amount)
    request.httpBody = try? JSONEncoder().encode(transaction)
    
    URLSession.shared.dataTask(with: request) { (data, _, error) in
        
        guard let data = data, error == nil else {
            completion(.failure(NetworkError.invalidData))
            return
        }
        
        print(data)
        // decoding
        
        
        
    }.resume()

}


guard let url = URL(string: "www.mybankservice/api/transfer-funds") else {
    throw NetworkError.badURL
}

let fromAccount = Account(balance: 100)
let toAccount = Account(balance: 50)
let amount = 500.0

transferFunds(url: url, from: fromAccount, to: toAccount, amount: amount) { (result) in
    switch result {
        case .success(let statusCode):
            print(statusCode)
        case .failure(AccountError.amountToLow):
            print("Amount to low")
        case .failure(AccountError.insufficientFunds):
                   print("Insufficient Funds")
        case .failure(NetworkError.invalidData), .failure(NetworkError.decodingError):
                   print("Generic Error message")
        default:
            print("Generic Error Message")
    }
}



