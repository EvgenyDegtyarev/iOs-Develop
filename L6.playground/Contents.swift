
struct Queue<T> {
   var array = [T]()

   var isEmpty: Bool {
    return array.isEmpty
  }

   var count: Int {
    return array.count
  }

   mutating func push(_ element: T) {
    array.append(element)
  }

   mutating func pop() -> T? {
    if isEmpty {
      return nil
    } else {
      return array.removeLast()
    }
  }
    
  var front: T? {
    return array.first
  }
}

var names = Queue(array: ["bob","fil","jane","alex","chris"])
names.pop()
names.push("john")
print(names.array)
names.array.sort{ $1 > $0 }
print(names.array)
var students = names.array.map{ "student: " + $0}
print(students)

var numbers = Queue(array: [1,3123,12,31,231443,4367,57,98])

numbers.array.sort{ $0 < $1 }
print(numbers.array)
var doubleNumbers = numbers.array.map{ $0 * 2 }
var oddNumbers = numbers.array.filter{ $0 % 2 != 0 }
print(doubleNumbers)
print(oddNumbers)



