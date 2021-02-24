enum windowsAction {
    case open, close
}
enum engineAction {
    case start, stop
}


struct sportCar {
    var brand: String
    var year: Double
    var windowsState: windowsAction
    var engineState: engineAction
    var baggageVolume: Double
    var baggageContent: Double
    
    mutating func closeWindows() {
        self.windowsState = .close
        print("Окна автомобиля \(brand) закрыты")
    }
    
    mutating func openWindows() {
        self.windowsState = .open
        print("Окна автомобиля \(brand) открыты")
    }
    
    mutating func startEngine() {
        self.engineState = .start
        print("Двигатель автомобиля \(brand) запущен")
    }
    
    mutating func stopEngine() {
        self.engineState = .stop
        print("Двигатель автомобиля \(brand) заглушен")
    }
    
    
    func loadPercent() {
        let load = (baggageContent / baggageVolume) * 100
        if load > 100 {
            print("Груз больше объема багажника")
        } else {
            print("Багажник \(brand) заполнен на \(load) процентов")
        }
    }
}
struct trunkCar {
    var brand: String
    var year: Double
    var windowsState: windowsAction
    var engineState: engineAction
    var bodyVolume: Double
    var bodyContent: Double
}

var myCar = sportCar(brand: "Ford", year: 2014, windowsState: .open, engineState: .start, baggageVolume: 400, baggageContent: 400)

var wifeCar = sportCar(brand: "Kia", year: 2018, windowsState: .close, engineState: .stop, baggageVolume: 200, baggageContent: 100)
var myTrunk = trunkCar(brand: "MAN", year: 2000, windowsState: .close, engineState: .stop, bodyVolume: 1000, bodyContent: 0)



myCar.loadPercent()
wifeCar.loadPercent()

myCar.closeWindows()


wifeCar.stopEngine()


