enum ShopErrors: Error{
    case notEnoughItems
    case notEnoughMoney
}

struct iPhone{
    var price: Int
    var balance: Int
}

class Shop {
    var deposite = 80_000
    var stock = [
        "iPhone Xr": iPhone(price: 40_000, balance: 5),
        "iPhone 11": iPhone(price: 60_000, balance: 0),
        "iPhone 12 pro": iPhone(price: 95_000, balance: 3)]
    func buyPhone(Name: String) throws {
        guard var iPhone = stock[Name] else {
            throw ShopErrors.notEnoughItems
        }
        guard iPhone.balance > 0 else {
            throw ShopErrors.notEnoughItems
        }
        guard  iPhone.price <= deposite else {
            throw ShopErrors.notEnoughMoney
        }
        deposite -= iPhone.price
        iPhone.balance -= 1
        stock[Name] = iPhone
        print("Вы купили: \(Name). Остаток средств: \(deposite)")
    }
}

let shop = Shop()
try? shop.buyPhone(Name: "iPhone Xr")
shop.deposite
shop.stock

do {
    try shop.buyPhone(Name: "iPhone 12 pro")
} catch ShopErrors.notEnoughItems {
    print("Отсутствует желаемый товар")
} catch ShopErrors.notEnoughMoney{
    print("Недостаточно денег")
}
