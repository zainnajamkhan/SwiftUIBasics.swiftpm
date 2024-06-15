/*
 
 To use optional chaining, you follow the optional value with a question mark and then access the property, method, or subscript call. If the optional is nil, the entire chain will fail gracefully. Otherwise, the optional is unwrapped, and the accessed property or method is made on the unwrapped value.
 
 */

class Person
{
    var residence: Residence?
}

class Residence
{
    var numberOfRooms = 1
}

let john = Person()

if let roomCount = john.residence?.numberOfRooms{
    print("John's residence has \(roomCount) rooms")
}
else
{
    print("Unable to retrieve the number of rooms")
}
