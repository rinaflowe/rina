import UIKit

var str = "Hello, playground"
//Реализовать свой тип коллекции «очередь» (queue) c использованием дженериков.
//Добавить ему несколько методов высшего порядка, полезных для этой коллекции (пример: filter для массивов)
//*Добавить свой subscript, который будет возвращать nil в случае обращения к несуществующему индексу.

//Реализовать свой тип коллекции «очередь» (queue) c использованием дженериков.
protocol Car {
    func speed () -> Double
}
class Sport: Car {
var maxspeed: Double?
var minspeed: Double?
func speed() -> Double {
    return (minspeed! + maxspeed!)/2
 }
}
class tunkCar: Car {
var maxspeed: Double?
var minspeed: Double?
func speed() -> Double {
    return (minspeed! + maxspeed!)/2
}
    init(maxspeed: Double, minspeed: Double) {
        self.maxspeed = maxspeed
        self.minspeed = minspeed
    }
}
extension tunkCar {
    func change() -> Double {
        return maxspeed! * 2.0
    }
}
let sport = tunkCar (maxspeed: 100, minspeed: 10)
tunkCar.change

struct Stack {                                   // коллекция типа стек
    private var elements: [Car] = []      // массив, где мы будем хранить элементы
    mutating func push(_ element: Car) { // добавляем элемент в конец массива
        elements.append(element)
    }
    mutating func pull() -> Car? {      // извлекаем элемент из массива
        return elements.removeLast()
    }
}
var stack = Stack()                          // создаем пустой стек
// добавляем элементы
stack.push(tunkCar(maxspeed: 20, minspeed: 10))
stack.push(tunkCar(maxspeed: 30, minspeed: 10))
stack.push(tunkCar(maxspeed: 50, minspeed: 10))
stack.push(tunkCar(maxspeed: 70, minspeed: 10))
//извлекаем элементы
stack.pull()                                 //
stack.pull()                                //
