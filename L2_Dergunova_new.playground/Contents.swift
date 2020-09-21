import UIKit

var str = "Hello, playground"
//1. Написать функцию, которая определяет, четное число или нет.
func x (a:Int) ->Bool {
    return a % 2 == 0
}
   x(a: 2)
//2.Написать функцию, которая определяет, делится ли число без остатка на 3.
func x1 (b:Int) ->Bool {
    return b % 3 == 0
}
   x1(b: 3)
//3.Создать возрастающий массив из 100 чисел.
var testArray: [Int] = []
for i in 0...100 {
    testArray.append(i)
}
//4.Удалить из этого массива все четные числа и все числа, которые не делятся на 3.
for value in testArray {
    if (value % 3) != 0 {
        testArray.remove(at: testArray.firstIndex(of: value)!)
    }
}
