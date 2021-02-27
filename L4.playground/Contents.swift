enum windowsAction {
    case open, close
}
enum engineAction {
    case start, stop
}
enum route {
    case europe
    case asia
    case africa
    case northAmerica
    case sougthAmerica
}


class Car {
    var brand: String
    var year: Double
    var windowsState: windowsAction
    var engineState: engineAction
    var baggageVolume: Double
    var baggageContent: Double
    init(brand: String, year: Double, windowsState: windowsAction, engineState: engineAction, baggageVolume: Double, baggageContent: Double ) {
        self.brand = brand
        self.year = year
        self.windowsState = windowsState
        self.engineState = engineState
        self.baggageVolume = baggageVolume
        self.baggageContent = baggageContent
        
    }
    
    func carAge() {
        
    }
    
     func closeWindows() {
        self.windowsState = .close
        print("Окна автомобиля \(brand) закрыты")
    }
    
     func openWindows() {
        self.windowsState = .open
        print("Окна автомобиля \(brand) открыты")
    }
    
     func startEngine() {
        self.engineState = .start
        print("Двигатель автомобиля \(brand) запущен")
    }
    
     func stopEngine() {
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

class SportCar : Car {
    var maxSpeed: Double
    init(brand: String, year: Double, windowsState: windowsAction, engineState: engineAction, baggageVolume: Double, baggageContent: Double, maxSpeed: Double) {
        self.maxSpeed = maxSpeed
        super.init(brand: brand, year: year, windowsState: windowsState, engineState: engineState, baggageVolume: baggageVolume, baggageContent: baggageContent)
    }
    override func openWindows() {
        print("У автомобиля \(brand) открыты окна и опущена крыша")
    }
    override func closeWindows() {
        print("У автомобиля \(brand) закрыты окна и поднята крыша")
    }
    override func carAge() {
        if year < 2021 {
            print("Такой экземпляр \(brand) был выпущен \(2021 - year) лет назад")
        } else {
            print("Такой экземпляр \(brand) будет выпущен через \(year - 2021) лет")
        }
    }
    }


class TrunkCar : Car {
    var maxRange: Double
    var route: route
    init(brand: String, year: Double, windowsState: windowsAction, engineState: engineAction, baggageVolume: Double, baggageContent: Double, maxRange: Double, route: route) {
        self.maxRange = maxRange
        self.route = route
        super.init(brand: brand, year: year, windowsState: windowsState, engineState: engineState, baggageVolume: baggageVolume, baggageContent: baggageContent)
    }
    override func openWindows() {
        self.windowsState = .close
        print("У грузового автомобиля \(brand) окна не открываются")
    }
    override func closeWindows() {
        print("У грузового автомобиля \(brand) окна закрыты, опция открытия отсутствует")
    }
}




var ferrari = SportCar(brand: "Ferrari", year: 2030, windowsState: .open, engineState: .start, baggageVolume: 10, baggageContent: 0, maxSpeed: 300)

var man = TrunkCar(brand: "MAN", year: 2000, windowsState: .close, engineState: .start, baggageVolume: 1000, baggageContent: 300, maxRange: 1000, route: .africa)

ferrari.closeWindows()
man.closeWindows()
ferrari.carAge()


