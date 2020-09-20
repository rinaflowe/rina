import UIKit

var str = "Hello, playground"
//1. Описать несколько структур – любой легковой автомобиль SportCar и любой грузовик TrunkCar.
//2. Описать в каждом наследнике специфичные для него свойства.Структуры должны содержать марку авто, год выпуска, объем багажника/кузова, запущен ли двигатель, открыты ли окна, заполненный объем багажника.
//3. Описать перечисление с возможными действиями с автомобилем: запустить/заглушить двигатель, открыть/закрыть окна, погрузить/выгрузить из кузова/багажника груз определенного объема.
//4. Добавить в структуры метод с одним аргументом типа перечисления, который будет менять свойства структуры в зависимости от действия.
//5. Инициализировать несколько экземпляров структур. Применить к ним различные действия.
//6. Вывести значения свойств экземпляров в консоль.



enum PrintCarMode {
    case standartCar, SportCar, TrunkCar
}
func printCar(_ car: [(String, String, String)], mode: PrintCarMode) {
    for i in car {
        switch mode {
        case .standartCar:
            print(i.0, i.1, i.2)
        case .SportCar:
            print(i.0, i.1)
        case .TrunkCar:
            print(i.0)
        }
    }
}

enum Caropenwind{
    case open,close
}
enum Carengine{
    case work,dontwork
}
enum Cartrunk{
    case full,empy
}
enum Transmission {
case manual, auto
}
struct Car{
    let mark: String
    let year:Double
    let trunk:Cartrunk
    let color: UIColor
    let transmission: Transmission
    var km: Double {
        didSet {
            let distance = km - oldValue
            print("Пробег составляет \(distance)")
        }
    }
    var openwind: Caropenwind
    mutating func closew(){
        self.openwind = .close
    }
    mutating func openw(){
        self.openwind = .open
       }
}
init(mark: String, year: Double, trunk: Cartrunk, color: UIColor, transmission: Transmission, km: Double, openwind: Caropenwind) {
    self.mark = mark
    self.year = Double
    self.trunk = Cartrunk
    self.color = UIColor
    self.transmission = Transmission
    self.km = km
    self.openwind = openwind
}
    let Car1 = Car(mark: "BMW", year: 2020, trunk: .empy ,  color: .white, transmission: .auto, km: 0.0, openwind: .open)
    let Car2 = Car(mark: "Mercedes", year: 2020, trunk: .empy , color: .green,transmission: .auto, km: 0.0, openwind: .open)
let Car3  = Car(mark: "Gazel", year: 1999, trunk: .empy , color: .red, transmission: .auto, km: 0.0, openwind: .open)


