
struct Resolution
{
    var width = 0 // Width and height are stored properties of the resolution structure
    var height = 0
}

class VideoMode
{
    var resolution = Resolution()
    var interlaced = false
    var frameRate: Double = 0.0
    var name: String?
}

// Creating instances

let someResolution = Resolution() // This is the most basic type of initialization
let someVideoMode = VideoMode()



struct Fahrenheit {
    
    var temperature: Double
    init ()
    {
        temperature = 32.0
    }
}

var f = Fahrenheit()
print(f.temperature)

// Customizing Initializers

struct Celsius {

    var temperatureInCelsius: Double
    
    init(fromFahrenheit Fahrenheit: Double)
    {
        temperatureInCelsius = (Fahrenheit - 32.0) / 1.8
    }
    
    init(fromKelvin kelvin: Double)
    {
        temperatureInCelsius = (kelvin - 273.15)
    }
}

let boilingPointofWater = Celsius(fromFahrenheit: 212.0)

let freezingPointOfWater = Celsius(fromKelvin: 273.15)


print(boilingPointofWater.temperatureInCelsius)
print(freezingPointOfWater.temperatureInCelsius)

struct Color {
    let red, green, blue: Double
    
    init(_ red: Double, _ green: Double, _ blue: Double)
    {
        self.red = red
        self.green = green
        self.blue = blue
    }
    
    init(_ white: Double)
    {
        red = white
        green = white
        blue = white
    }
}

let magenta = Color(1.0, 0.0, 1.0)
let halfGray = Color(0.5)

// Computed properties in Structs

struct Sport
{
    var name: String
    var isOlympicSport: Bool
    
    var olympicStatus: String {
        if isOlympicSport {
           return  "\(name) is an olympic sport"
        }
        else {
           return "\(name) is not an olympic sport"
        }
    }
    
}

let chessBoxing = Sport(name: "Chessboxing", isOlympicSport: true)
print(chessBoxing.olympicStatus)

class Vehicle {
    var currentSpeed = 0.0
    var description: String {
        return "traveling at \(currentSpeed) miles per hour"
    }
    
    func makeNoise()
    {}
}

class Car: Vehicle
{
    var gear = 1
    override var description: String {
        return super.description + " in gear \(gear)"
        // The override of the description property starts by calling super.description, which returns the Vehicle's class´s description property. The Car class's version of description will add some extra text.
        
        // The super keyword allows us to use access and invoke methods, properties, and initializers of the parent class within a subclass.
        
    }
    
}

let car = Car()
car.currentSpeed = 35.0
car.gear = 3
print("Car: \(car.description)")
print("Car: \(car.description)")
print("Car: \(car.description)")

// We can prevent overrides using the final keyword. Any attempt to override a final method, property, or subscript in a subclass is reported as a compile-time error. 
