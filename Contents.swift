import UIKit


// Associated types --> we can make protocol genric using assosiated types

protocol AllItem {

    associatedtype SomeType
    var items: [SomeType] {get set}

    mutating func addItem(item: SomeType)
}

extension AllItem {

    mutating func addItem(item: SomeType) {

        items.append(item)
    }
}

struct FinalItem: AllItem {

    var items = [String]()
}

var item = FinalItem()
item.addItem(item: "A")
item.addItem(item: "B")
print(item)
