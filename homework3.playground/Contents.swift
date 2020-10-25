import Foundation


//1. Описать несколько структур – любой легковой автомобиль SportCar и любой грузовик TrunkCar.
//2. Описать в каждом наследнике специфичные для него свойства.Структуры должны содержать марку авто, год выпуска, объем багажника/кузова, запущен ли двигатель, открыты ли окна, заполненный объем багажника.
//3. Описать перечисление с возможными действиями с автомобилем: запустить/заглушить двигатель, открыть/закрыть окна, погрузить/выгрузить из кузова/багажника груз определенного объема.
//4. Добавить в структуры метод с одним аргументом типа перечисления, который будет менять свойства структуры в зависимости от действия.
//5. Инициализировать несколько экземпляров структур. Применить к ним различные действия.
//6. Вывести значения свойств экземпляров в консоль.


enum engineStatus {
    case start, stop
}

enum windowsOpen {
    case open, close
}

enum trunkState {
    case full, empty
}

struct car {
    let brandAuto : String
    var color : String
    mutating func changeColor(c:String) {
        switch c {
        case "black":
            self.color = "black"
        case "blue":
            self.color = "blue"
        case "gray":
            self.color = "gray"
        case "yelow":
            self.color = "yellow"
        default:
            print("загрузка невозможна.")
        }
    }
    let yearOfManufacture : Int
    var trunkVolume : Double {
        willSet {
            if (trunkState == .empty) && (trunkVolume > 0) && (trunkVolume != 0) && (newValue < trunkVolume) {
                let space = trunkVolume - newValue
                print ("\(brandAuto) багажник свободен: \(space)")
            } else {
                print("Загрузить нельзя или \(brandAuto) багажник полон.")}
        }
    }
    var engineStatus : engineStatus {
        willSet {
            if newValue == .start {
                print ("\(brandAuto) двигатель включен")
            } else {
                print("\(brandAuto) двигатель выключен")}
        }
    }
    var windowsOpen : windowsOpen {
        willSet {
            if newValue == .open {
                print("\(brandAuto) окна открыты")
            } else {
                print("\(brandAuto) окна закрыты") }
        }
    }
    var trunkState : trunkState
    mutating func emptyTrunck() {
        self.trunkState = .empty
        print ("\(brandAuto) багажник пуст")
    }
}

struct truck {
    let brandTruck : String
    var color : String
    mutating func changeColor(c:String) {
        switch c {
        case "white":
            self.color = "white"
        case "black":
            self.color = "black"
        case "red":
            self.color = "red"
        case "blue":
            self.color = "blue"
        default:
            print("ошибка загрузки.")
        }
    }
    let yearOfManufacture : Int
    var truckVolume : Double {
        willSet {
            if (trunkState == .empty) && (truckVolume > 0) && (truckVolume != 0) && (newValue < truckVolume) {
                let space = truckVolume - newValue
                print ("\(brandTruck) багажник свободный: \(space)")
            } else { print("Загрузить нельзя или \(brandTruck) багажник полон.")}
        }
    }
    var engineStatus : engineStatus {
        willSet {
            if newValue == .start {
                print ("\(brandTruck) двигатель включен")
            } else {print("\(brandTruck) двигатель не включен")}
        }
    }
    var windowsOpen : windowsOpen {
        willSet {
            if newValue == .open {
                print("\(brandTruck) окна октрыты")
            } else { print("\(brandTruck) окна закрыты") }
        }
    }
    var trunkState : trunkState
    mutating func emptyTrunck() {
        self.trunkState = .empty
        print ("\(brandTruck) багажник пустой")
    }
}

var car1 = car (brandAuto: "Lexus",  color: "clear", yearOfManufacture: 2016, trunkVolume: 580.0 , engineStatus: .stop, windowsOpen: .open, trunkState: .empty)
var car2 = car (brandAuto: "BMW",  color: "clear", yearOfManufacture: 2017, trunkVolume: 480.0, engineStatus: .stop, windowsOpen: .close, trunkState: .full)

var truck1 = truck(brandTruck: "Skania",  color: "clear", yearOfManufacture: 2012, truckVolume: 100000.0, engineStatus: .start, windowsOpen: .open, trunkState: .full)
var truck2 = truck(brandTruck: "КАМАЗ",  color: "clear", yearOfManufacture: 2013, truckVolume: 150000.0, engineStatus: .start, windowsOpen: .close, trunkState: .empty)


car1.engineStatus = .start
car1.trunkVolume = 410.0
car1.changeColor(c: "red")
car2.trunkVolume = 900.0
car2.emptyTrunck()
car2.trunkVolume = 79.9
car2.windowsOpen = .open
car2.changeColor(c: "black")

truck1.engineStatus = .stop
truck1.windowsOpen = .close
truck2.windowsOpen = .open
truck2.engineStatus = .stop
truck2.truckVolume = 5485668
truck2.changeColor(c: "white")
truck2.color
