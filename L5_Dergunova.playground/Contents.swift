import UIKit

var str = "Hello, playground"
//Создать протокол «Car» и описать свойства, общие для автомобилей, а также метод действия.
//Создать расширения для протокола «Car» и реализовать в них методы конкретных действий с автомобилем: открыть/закрыть окно, запустить/заглушить двигатель и т.д. (по одному методу на действие, реализовывать следует только те действия, реализация которых общая для всех автомобилей).
//Создать два класса, имплементирующих протокол «Car»: tunkCar и sportCar. Описать в них свойства, отличающиеся для спортивного автомобиля и цистерны.
//Для каждого класса написать расширение, имплементирующее протокол «CustomStringConvertible».
//Создать несколько объектов каждого класса. Применить к ним различные действия.


//Создать протокол «Car» и описать свойства, общие для автомобилей, а также метод действия.
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
//Создать расширения для протокола «Car» и реализовать в них методы конкретных действий с автомобилем: открыть/закрыть окно, запустить/заглушить двигатель и т.д. (по одному методу на действие, реализовывать следует только те действия, реализация которых общая для всех автомобилей).

extension tunkCar {
    func change() -> Double {
        return maxspeed! * 2.0
    }
}
let sport = tunkCar (maxspeed: 100, minspeed: 10)
tunkCar.change

//Создать два класса, имплементирующих протокол «Car»: tunkCar и sportCar. Описать в них свойства, отличающиеся для спортивного автомобиля и цистерны.
protocol CarBelonging{                    // объявляем протокол принадлежности для письма
    func drive(_ text: String)
}
class tunkcar{
    var CarBelonging:CarBelonging?   
    func drive(_ text: String) {
        CarBelonging?.drive(text)
    }
}
class RedSportcar{
    var CarBelonging: CarBelonging?
    func drive(_ text: String) {
        print("Летим на красной машине: \(text)")
         CarBelonging?.drive(text)
    }
}


let redSportcar = RedSportcar()
redSportcar.drive("Летим на красной машине")
