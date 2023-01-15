 
import UIKit


struct Website {
    
    init(url: String) {
        
        defer { self.url = url }
        
        self.url = url
    }
    
    var url: String {
        
        didSet {
            url = url.addingPercentEncoding(withAllowedCharacters: .urlHostAllowed) ?? url
        }
    }
    
}

var website = Website(url: "www.movies.com/?search=Lord of the Rings")
//website.url = "www.movies.com/?search=Lord of the Rings"
print(website)

// www.movies.com%2F%3Fsearch=Lord%20of%20the%20Rings



