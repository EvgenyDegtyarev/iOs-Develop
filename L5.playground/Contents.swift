

enum windowsAction{
    case open, closed
}
enum engineAction{
    case start, stop
}
enum route{
    case europe
    case asia
    case africa
    case northAmerica
    case sougthAmerica
}
enum bodyType{
    case coupe
    case cabrio
    case roadster
}


protocol Car {
    var brand: String {get}
    var year: Int {get}
    var engineState: engineAction {get set}
    var windowsState: windowsAction {get set}
}
extension Car {
    mutating func changeEngineState(engineState: engineAction){
        self.engineState = engineState
    }
    mutating func chageWindowsState(windowsState: windowsAction){
        self.windowsState = windowsState
    }
}
class basicCar: Car{
    var brand: String
    var year: Int
    var engineState: engineAction = .stop
    var windowsState: windowsAction = .closed
    init(brand: String, year: Int) {
        self.brand = brand
        self.year = year
    }
}
class sportCar: basicCar, CustomStringConvertible{
    var bodyType: bodyType = .coupe
    var description: String{
        return "SportCar: \(brand) \n engine: \(engineState) \n windows is \(windowsState) \n Body Type: \(bodyType) \n Year: \(year) \n"
    }
}
class trunkCar: basicCar, CustomStringConvertible{
    var route: route = .europe
    var description: String{
        return "TrunkCar: \(brand) \n engine: \(engineState) \n windows is \(windowsState) \n Route: \(route) \n Year: \(year)"
    }
}

var ferrari = sportCar(brand: "ferrari", year: 2000)
var man = trunkCar(brand: "MAN", year: 2010)

ferrari.changeEngineState(engineState: .start)
ferrari.bodyType = .cabrio
man.chageWindowsState(windowsState: .open)
man.route = .africa

print(ferrari.description)
print(man.description)
