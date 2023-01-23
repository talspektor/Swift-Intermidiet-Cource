import UIKit

protocol ConfigurableCell {
    associatedtype Model
    func configure(_ model: Model)
}

struct User {
    let name: String
}

class StudentCell: ConfigurableCell {
    typealias Model = User
    func configure(_ model: Model) {
        // configure
    }
}

class StaffCell: ConfigurableCell {
    typealias Model = User
    func configure(_ model: Model) {
        // confugure
    }
}

class AnyConfigurable: ConfigurableCell {
    
    typealias Model = Any
    private let configureCellClosure: (Any) -> Void
    
    init<T: ConfigurableCell>(_ configurableCell: T) {
        configureCellClosure = { model in
            guard let model = model as? T.Model else { return }
            configurableCell.configure(model)
        }
    }
    
    func configure(_ model: Any) {
        configureCellClosure(model)
    }
    
}


let cells = [AnyConfigurable(StudentCell()), AnyConfigurable(StaffCell())]


//let cells: [ConfigurableCell] = [StudentCell(), StaffCell()]


