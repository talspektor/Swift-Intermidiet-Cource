
import UIKit

let indexes = 1..<5000

let images = indexes.lazy.filter { index -> Bool in
    print("[filter]")
    return index % 2 == 0
}.map { index -> String in
    print("[Map]")
    return "image_\(index)"
}

let lastThreeImages = images.suffix(3)
for img in lastThreeImages {
    print(img)
}




