//: Playground - noun: a place where people can play

import Foundation

struct Journal {
    var name: String
    var mark: Int
}

extension Journal: CustomStringConvertible {
    var description : String {
        return "Name: \(name), Mark: \(mark)"
    }
}


struct queue <T> {
    private var elements: [T] = []
    
    public var isEmpty: Bool {
        return elements.count == 0
    }
    
    mutating func enqueue(element: T) {
        elements.append(element)
    }
    mutating func dequeue()->T {
        return elements.removeLast()
    }
    
    public var head: T? {
        if isEmpty {
            print("The elemnets aren't found. Array is empty.")
            return nil
        } else {
            print("Last element is \(elements.last!)")
            return elements.last
        }
    }
    
    public var front: T? {
        if isEmpty {
            print("The elemnets aren't found. Array is empty.")
            return nil
        } else {
            print("First element is \(elements.first!)")
            return elements.first
        }
    }
    
    func printMyQueue() {
        print(elements)
    }
}

extension queue {
    func myFilter(predicate:(T) -> Bool) -> [T] {
        var result = [T]()
        for i in elements {
            if predicate(i) {
                result.append(i)
            }
        }
        return result
    }
}

var pupil = queue<Journal>()
pupil.enqueue(element: .init(name: "Nikolai", mark: 4))
pupil.enqueue(element: .init(name: "Alexei", mark: 5))
pupil.enqueue(element: .init(name: "Anna", mark: 5))
pupil.enqueue(element: .init(name: "Maxim", mark: 3))
pupil.enqueue(element: .init(name: "Roman", mark: 4))
pupil.enqueue(element: .init(name: "Kostya", mark: 3))
pupil.enqueue(element: .init(name: "Anastasia", mark: 4))
pupil.enqueue(element: .init(name: "Vitalyi", mark: 3))

pupil.printMyQueue()
pupil.head
pupil.front

let honoursPupil = pupil.myFilter(predicate: {$0.mark == 5})
print(honoursPupil)


