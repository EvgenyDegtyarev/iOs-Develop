
//фукнция определяет, четное число или нет

func evenNum(a: Int, b: Int) {
    
    let c = a % b
        if c == 0 {
        print("Число \(a) четное \n")
        } else {
            print("Число \(a) нечетное \n")
        }
}

evenNum(a: 7, b: 2)


//функция определяет, делится ли число на 3 без остатка

func remaind (d: Int, e: Int) {
    let f = d % e
        if f == 0 {
        print("Число \(d) делится на 3 без остатка \n")
        } else {
            print("Число \(d) делится на 3 с остатком, равным \(f) \n")
        }
}
remaind(d: 9, e: 3)

    
// массив из 100 чисел

var array: [Int] = []
for i in 0...99 {
    array.append(i)
}
print("Массив из 100 чисел: \(array) \n")

// убираем из массива все четные числа и делящиеся на 3

for value in array {
    if (value % 2) == 0 || (value % 3) == 0 {
        array.remove(at: array.firstIndex(of: value)!)
    }
}
print("Из массива убраны четные числа и делящиеся на 3 без остатка: \(array) \n")
