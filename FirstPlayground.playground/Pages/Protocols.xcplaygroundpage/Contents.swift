//protocol Car
//{
//    func honk()
//    func isStarting()
//    func currentSpeed()
//    func applyBrakes()
//}
//
//class BMW: Car
//{
//    func honk() {
//        print("BMW is honking")
//    }
//    func isStarting() {
//        print("BMW is starting")
//    }
//    func currentSpeed() {
//        print("BMW has a current speed of")
//    }
//    func applyBrakes() {
//        print("BMW is applying brakes")
//    }
//}
//
//class Audi: Car
//{
//    func honk() {
//        print("Audi is honking")
//    }
//    func isStarting() {
//        print("Audi is starting")
//    }
//    func currentSpeed() {
//        print("Audi has a current speed of")
//    }
//    func applyBrakes() {
//        print("Audi is applying brakes")
//    }
//}
//
//class AudiR8: Audi
//{
//    override func isStarting()
//    {
//        debugPrint("Engine started for Audi R8")
//    }
//}
//
//class Person {
//    
//    func driveCar(car: Car)
//    {
//        car.isStarting()
//    }
//}
//
//let objBMW = BMW()
//let objAudi = Audi()
//
//
//let p = Person()
//p.driveCar(car: objAudi)
//p.driveCar(car: objBMW)
//
//
//let objAudiR8 = AudiR8()
//objAudiR8.isStarting()
//
//
//protocol Airplane
//{
//    var description: String { get set }
//    func isFlying()
//    func isInMaintainence () -> Bool
//    func isMilitaryPlane() -> Bool
//    
//}
//
//// Extensions cannot contain stored properties
//
//extension Airplane
//{
//    var description: String {
//        return "Plane"
//    }
//    
//    func isFlying() {
//        print("The plane is not currently flying")
//    }
//    
//    func isInMaintainene() -> Bool {
//        return false
//    }
//    
//    func isMilitaryplane() -> Bool
//    {
//        return true
//    }
//}
//
//class Boeing747: Airplane
//{
//    var description: String
//    
//    func isInMaintainence() -> Bool {
//        <#code#>
//    }
//    
//    func isMilitaryPlane() -> Bool {
//        <#code#>
//    }
//    
//    
//}


protocol Vehicle
{
    var speed: Double { get set }
    var vehicleDescription: String { get }
    var fuelLevel: Double { get set }
    var needsRefueling: Bool { get }
    mutating func refuel(amount: Double)

}

protocol Fuel
{
    var fuelType: String { get }
}

protocol Engine {
    
    var horsepower: Int { get }
    func startVehicle()
    func stopVehicle()
}

struct Diesel: Fuel
{
    var fuelType: String {
        return "Diesel"
    }
}

struct Petrol: Fuel
{
    var fuelType: String {
        return "Petrol"
    }
}

extension Vehicle {
    
    var needsRefueling: Bool {
        return fuelLevel < 15.0
    }
    
    var vehicleDescription: String {
        return "This vehicle is moving at \(speed) miles-per-hour and has a fuel level of \(fuelLevel) liters"
    }
    
    mutating func refuel(amount: Double)
    {
        fuelLevel += amount
        if fuelLevel > 100.0 {
            fuelLevel = 100.0
        }
        
        print("Refueled amount: \(amount)%. The car has a fuel level of \(fuelLevel) litres")
    }
    
}

class Car: Vehicle {
    
    var speed: Double
    var fuelLevel: Double
    
    init(speed: Double, fuelLevel: Double) {
        self.speed = speed
        self.fuelLevel = fuelLevel
    }
    
    func startVehicle() {
        print("The car is starting")
    }
    
    func stopVehicle() {
        print("The car is stopping")
    }
}
class Motorcycle: Vehicle {
    
    var speed: Double
    var fuelLevel: Double
    
    init(speed: Double, fuelLevel: Double) {
        self.speed = speed
        self.fuelLevel = fuelLevel
    }
    
    func startVehicle() {
        print("Motorcycle is starting")
    }
    
    func stopVehicle() {
        print("Motorcycle is stopping")
    }
}

var car = Car(speed: 35.0, fuelLevel: 55.0)
car.startVehicle()
print(car.vehicleDescription)
car.refuel(amount: 66.0)
print(car.fuelLevel)
