import UIKit
//урок 4
//1. Описать класс Car c общими свойствами автомобилей и пустым методом действия по аналогии с прошлым заданием.
//2. Описать пару его наследников trunkCar и sportСar. Подумать, какими отличительными свойствами обладают эти автомобили. Описать в каждом наследнике специфичные для него свойства.
//3. Взять из прошлого урока enum с действиями над автомобилем. Подумать, какие особенные действия имеет trunkCar, а какие – sportCar. Добавить эти действия в перечисление.
//4. В каждом подклассе переопределить метод действия с автомобилем в соответствии с его классом.
//5. Создать несколько объектов каждого класса. Применить к ним различные действия.
//6. Вывести значения свойств экземпляров в консоль.



enum CarWindowsState{
    case opened, closed
}

enum CarEngineState{
    case on, off
}

class Car {
    var color: String = ""
    var numberOfWheels: Int = 0
    var model: String = ""
    var windowsState: CarWindowsState
    var engineState: CarEngineState
    
    init(color: String, numberOfWheels: Int, model: String,windowsState: CarWindowsState, carEngineState: CarEngineState) {
        self.color = color
        self.numberOfWheels = numberOfWheels
        self.model = model
        self.windowsState = windowsState
        self.engineState = carEngineState
    }
    func openWindows(){
        windowsState = .opened
        print("открыть окна")
    }
    func closedWindows(){
        windowsState = .closed
        print("закрыть окна")
    }
}

class SportCar: Car{
    var maxSpeed: Int
    var weight:Int
    init(maxSpeed: Int, weight: Int,color: String, numberOfWheels: Int, model: String, carEngineState: CarEngineState, windowsState: CarWindowsState ){
        self.maxSpeed = maxSpeed
        self.weight = weight
        super.init(color: color, numberOfWheels: numberOfWheels, model: model, windowsState: windowsState, carEngineState: carEngineState)
    }
    override func openWindows() {
        super.openWindows()
        print("Закройте окна")
    }
    // проверить все переменные и индексы
}
class Truck: Car{
    var isTrunkFull: Bool
    var heigtCabin: Double
    
    init(isTrunkFull:Bool, heigtCabin:Double, color: String, numberOfWheels: Int, model: String,windowsState: CarWindowsState, carEngineState: CarEngineState) {
        self.isTrunkFull = isTrunkFull
        self.heigtCabin = heigtCabin
        super.init(color: color, numberOfWheels: numberOfWheels, model: model, windowsState: windowsState, carEngineState: carEngineState)
    }
}
var carSportCar = SportCar(maxSpeed: 250, weight: 1750, color: "Black", numberOfWheels: 4, model: "Lexus", carEngineState: .on, windowsState: .closed)
var carTruck = Truck(isTrunkFull: true, heigtCabin: 2500, color: "Black", numberOfWheels: 4, model: "MAZ", windowsState: .closed, carEngineState: .off)
print(carSportCar.model, carSportCar.windowsState, carSportCar.maxSpeed, carSportCar.weight, carSportCar.color, carSportCar.engineState, carSportCar.numberOfWheels,carSportCar.windowsState)
print(carTruck.heigtCabin, carTruck.isTrunkFull, carTruck.color, carTruck.color, carTruck.engineState, carTruck.model ,carTruck.numberOfWheels,carTruck.windowsState)
