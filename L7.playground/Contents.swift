import UIKit

var str = "Hello, playground"

//1. Придумать класс, методы которого могут завершаться неудачей и возвращать либо значение, либо ошибку Error?. Реализовать их вызов и обработать результат метода при помощи конструкции if let, или guard let.
class School {
    private var classmate = [
        "Иванов Иван Иванович": 10,
        "Сидоров Сидор Сидорович": 5,
        "Петров Петр Петрович": 7
    ]
    // теперь метод возвращает опциональное значение
    func grade (atFio fio: String) -> Int? {
        return classmate [fio]
    }
    func averageGrade() -> Int {
  guard classmate.count > 1 else { // иначе возвращаем 0
            return 0
        }
        var totalGrade = 0
        for classmate in classmate {
            totalGrade += classmate.value
        }
        return totalGrade / classmate.count
    }
}
    let school = School()
school.grade(atFio: "Иванов Иван Иванович")
school.grade(atFio: "Ломоносов Михаил Васильевич")
school.averageGrade()

//2. Придумать класс, методы которого могут выбрасывать ошибки. Реализуйте несколько throws-функций. Вызовите их и обработайте результат вызова при помощи конструкции try/catch.

struct Mark {
    var number:Int
    var count:Int
    let student: Student
}
    struct Student {
        let name: String
    }
    class listGrade {
// Хранилище
    var library = [
    "Иванов": Mark(number: 1, count: 7, student: Student (name: "Иванов")),
    "Сидоров": Mark(number: 1, count: 7, student: Student (name: "Сидоров")),
    "Леонтьев": Mark(number: 1, count: 7, student: Student (name: "Леонтьев"))
    ]
    var gradesneeded = 95
    func vend(MarkNamed name: String) throws -> Student?{
guard let Mark = library[name] else {
return nil
}
guard Mark.number <= gradesneeded else {
return nil
        }
        gradesneeded -= Mark.number
                var newMark = Mark
                newMark.count -= 1
                library[name] = newMark
                print("Прошел \(name)")
                return newMark.student
            }
        }
        let ListGrade = listGrade()
try? ListGrade.vend(MarkNamed: "Сидоров")    // nil
try ListGrade.vend(MarkNamed: "Иванов")  // nil
try ListGrade.vend(MarkNamed: "Леонтьев")   // nil


