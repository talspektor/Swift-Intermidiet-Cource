
import UIKit

/*
var names = ["Alex", "John", "Steven", "Mary"]

names = names.filter { name in
    return name.count > 4
}

print(names)
*/

struct Movie {
    let title: String
    let genre: String
}

var movies = [Movie(title: "Lord of the Rings", genre: "Fiction"), Movie(title: "ET", genre: "Fiction"),
              Movie(title: "Finding Nemo", genre: "Kids"), Movie(title: "Cars", genre: "Kids")]

let movieToRemove = Movie(title: "Finding Nemo", genre: "Kids")

movies = movies.filter { movie in
    return movie.title != movieToRemove.title
}

print(movies)


//let kidMovies = movies.filter { movie in
//    return movie.genre == "Kids"
//}

//print(kidMovies)
