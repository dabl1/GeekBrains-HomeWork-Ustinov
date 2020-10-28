import UIKit
import Foundation

//1. Создать протокол «Car» и описать свойства, общие для автомобилей, а также метод действия.
//2. Создать расширения для протокола «Car» и реализовать в них методы конкретных действий с автомобилем: открыть/закрыть окно, запустить/заглушить двигатель и т.д. (по одному методу на действие, реализовывать следует только те действия, реализация которых общая для всех автомобилей).
//3. Создать два класса, имплементирующих протокол «Car» - trunkCar и sportСar. Описать в них свойства, отличающиеся для спортивного автомобиля и цистерны.
//4. Для каждого класса написать расширение, имплементирующее протокол CustomStringConvertible.
//5. Создать несколько объектов каждого класса. Применить к ним различные действия.
//6. Вывести сами объекты в консоль.


protocol Car {
    func canRide () -> Bool
}
class SportCar: Car {
    var stateEngine: Bool
    var color: UIColor
    var petrol: Double
    init(stateEngine:Bool, color:UIColor, petrol: Double){
        self.stateEngine = stateEngine
        self.color = color
        self.petrol = petrol
    }
    func canRide() -> Bool {
        if petrol  > 0 {
            print("топливо есть в баке, можно ехать")
            return true
            
        }else{
            print("топлива нет, ехать невозможно")
            return false
        }
    }
}

class TrunkCar: Car {
    var maxWeightTrunkCar: Int
    var weightTrunkCar: Int
    init(maxWeightTrunkCar:Int, weightTrunkCar: Int){
        self.maxWeightTrunkCar = maxWeightTrunkCar
        self.weightTrunkCar = weightTrunkCar
    }
    func differentWeight(){
        let dif = maxWeightTrunkCar - weightTrunkCar
        print("остаток по загрущки цистерны, \(dif) килограмм")
    }
    func canRide() -> Bool {
        if weightTrunkCar <= maxWeightTrunkCar{
            print("ты можешь ездить перевеса нет")
            return true
        }else{
            print("перегруз, вес слишком большой, надо облегчиться на \(maxWeightTrunkCar-weightTrunkCar) кг")
            return false
        }
    }
}

extension SportCar{
    func isCarWorking() -> Bool {
        if stateEngine == true{
            print("двс запущен")
            return true
        } else {
            print("включи ДВС")
            return false
        }
    }
}

extension SportCar: CustomStringConvertible{
    var description: String {
        return String(describing: color)
    }
}

print("   car!!!")
let car1 = SportCar(stateEngine: true, color: .black, petrol: 55)
let car2 = SportCar(stateEngine: false, color: .red, petrol: 0)
car1.description
car1.canRide()
car1.stateEngine
car1.color
car1.petrol
car1.isCarWorking()
car2.canRide()
car2.stateEngine
car2.color
car2.petrol
car2.isCarWorking()

print("   trunk!!")
let trunk1 = TrunkCar(maxWeightTrunkCar: 85_000, weightTrunkCar: 67_399)
let trunk2 = TrunkCar(maxWeightTrunkCar: 66_000, weightTrunkCar: 68_643)
trunk1.differentWeight()
trunk2.differentWeight()
trunk1.canRide()
trunk2.canRide()

