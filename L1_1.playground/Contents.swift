var a: Float = -10
var b: Float = 5
var c: Float = 3
var d: Float = b * b - 4 * a * c

if d < 0{
    print("Дискриминанта уравнения меньше нуля, уравнение не имеет корней")
}
else if (d == 0) {
    let x = ( -b + d.squareRoot()) / 2 * a
    print("Дискриминанта уравнения равна нулю, уравнение имеет единственный корень: \(x)")
}

else {
    let x1 = ( -b + d.squareRoot()) / 2 * a
    let x2 = ( -b - d.squareRoot()) / 2 * a
    print("Дискриминанта уравнения больше нуля, уравнение будет иметь два корня: \(x1) и \(x2)")
}

