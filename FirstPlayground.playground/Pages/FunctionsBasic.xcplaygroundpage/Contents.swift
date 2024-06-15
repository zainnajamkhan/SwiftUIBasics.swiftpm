////
////func printHelp()
////{
////    let message = """
////
////Welcome to MyApp!
////Run this app inside a directory
////and you will get 100s of images!
////
////"""
////    print(message)
////    
////
////}
////
////printHelp()
////
////// Accepting Parameters
////
////func square(number: Int)
////{
////    print(number * number)
////}
////
////square(number: 8)
////
////// Send data back (Return)
////
////func square2(number: Int) -> Int
////{
////    return number * number
////}
////
////print(square2(number: 8))
////
////// Returning a tuple
////// When you access tuple values, Swift knows it will be there, unlike dictionaries.
////
////func getUser() -> (firstName: String, lastName: String)
////{
////    (firstName: "Taylor", lastName: "Swift")
////}
////
////let user = getUser()
////
////print("Name: " + "\(user.firstName)" + " " + "\(user.lastName)")
////
////// OR
////
////func getUser2() -> (String, String)
////{
////    ("Randy", "Orton")
////}
////
////let user2 = getUser2()
////
////print("Name: \(user2.0) \(user2.1)")
//
//
//// Below is an example where we first pass values with named arguments and then without named arguments.
//
//func add_named(a:Int,b:Int)->Int
//{
//  return a+b
//}
//
//var result1=add_named(a:4,b:5)
//print(result1)
//
//
//
//
//func add_unnamed(_ a:Int,_ b:Int)->Int
//{
//  return a+b
//}
//var result2=add_unnamed(4,5)
//print(result2)
//
//// Argument Labels
//
///*
// Argument labels are the parameter names that functions take in.
//Again, to omit argument labels, we can use a _ before the parameter name. A parameter name is still necessary, though.
// 
// The first example below is a simple unnamed argument label.
// 
// 
// */
//
//
//func addFour (_ num: Int) -> Int
//{
//    return num + 4
//}
//
//print(addFour(34))
//
//// Example of argument label
//// Basically, it gives more context regarding what the function will do.
//
//var name = "Maegan"
//
//func setName(to newName: String)
//{
//    name = newName
//}
//
//print(name)
//
//setName(to: "Alex")
//
//print(name)
//
//// Another example
//
//func greet(name: String, from place: String) -> String
//{
//    return "\(name) is from \(place)"
//}
//
//var message = greet(name: "Alex", from: "England")
//print(message)
//
//// Functions with multiple return values
//
//func minMax(array: [Int]) -> (min: Int, max: Int)
//{
//    var currentMin = array[0]
//    var currentMax = array[0]
//    
//    for value in array [1..<array.count]
//    {
//        if value < currentMin
//        {
//            currentMin = value
//        }
//        else if value > currentMax
//        {
//            currentMax = value
//        }
//    }
//    
//    return (currentMin, currentMax) // Returning a tuple containing two Ints.
//}
//
//print(minMax(array: [3,5,3,5,6,2,1,12,413,314,41512,23231,23323,9]))
//
//
//// We are passing a default value in the second parameter. We can do it for anything. That is why we don't need to provide a
//func greet2(_ person: String, nicely: Bool = true) {
//    if nicely == true {
//        print("Hello, \(person)!")
//    } else {
//        print("Oh no, it's \(person) again...")
//    }
//}
//
//greet2("Taylor")
//
//greet2("Taylor", nicely: false)
//
//// Variadic Functions
//
//// You can make any parameter variadic by writing ... after its type.
//
//func square(numbers: Int...)
//{
//    for number in numbers {
//        print("\(number) square is \(number * number)")
//    }
//}
//
//square(numbers: 1,3,4,5,6)
//
//// Throws functions
//
//enum PasswordError: Error
//{
//    case obvious
//}
//
//func checkPassword(_ password: String) throws -> Bool
//{
//    if password == "Password"
//    {
//        throw PasswordError.obvious
//    }
//    
//    return true
//}
//
//print(checkPassword("Lol"))
//
//do {
//    try checkPassword("What")
//    print("Good Password")
//} catch {
//    print("You cant use that password")
//}
//
//func doubleInPlace(number: inout Int)
//{
//    number *= 2
//}
//
//var myNum = 2
//doubleInPlace(number: &myNum)
//print(myNum)
//
