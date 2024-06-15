// Basic Closure Implementation

// Using closures as a variable. Takes a single string parameter and returns a string.

var greet = {
    (name: String) -> String in
    return "Hello, \(name)!"
}

print(greet("Alice"))

// Using a closure that accepts two Int values and returns the sum of both variables

let addClosure: (Int, Int) -> Int =
{
    (a,b) in return a + b
}

print(addClosure(4, 6))

// Using a closure that multiplies two values together

let multiplyClosure: (Int, Int) -> () =
{
    (a, b) in print (a * b)
}

multiplyClosure(5,6)

// Using a closure that has no parameters and returns an Integer value

let noParamClosure: () -> (Int) =
{
    return Int.random(in: 1..<10)
}

var callFun = noParamClosure()
print(callFun)

// Global Closure that does not capture any value from its context

let globalClosure: () -> Void =
{
    let name = "Global Closure"
    print(name)
}

globalClosure()

// Global closure that captures the variable name from outside its scope. This is not something a function can do. We have to explicitly provide these variables.


let name = "Global Capturing Closure"

var closure: () -> () =
{
    print("Hello, \(name)")
}


// Printing a sorted array using closure expression. Here we display the lightweightness of closures. WWhen the closure body consits of a single expression, the 'return' keyword can be ommitted, like in the below example.

let numbers = [1,3,5,3,6,3,2,6]

let sortedArray = numbers.sorted(by: { (a, b)
    in
    a < b
})

print(sortedArray)


// In this example, we have used shorthand argument names ($0 and $1) for inline closures, which refer to the closure's arguments.

let numbers_second = [4,63,65,33,62,632,42,56]

let sortedArray_second = numbers_second.sorted(by: { $0 < $1
})

print(sortedArray_second)


// Passing closures as parameters to functions

    //1. Define a function to take a closure as a parameter. In this case, operation: (Int, Int) -> Int is a closure that takes two Int parameters and returns an Int. The last Int is the function's return type.

func performSomeOperation(a: Int, b: Int, operation: (Int, Int) -> Int) -> Int
{
    let result = operation(a,b)
    return result
}

    //2. Define closure expressions for addition and subtraction

let additionClosure: (Int, Int) -> Int =
{
    (a,b) in
    return a + b
}

let subtractionClosure: (Int, Int) -> Int =
{
    (a,b) in
    return a - b
}

    //3. Call the functions with the different closures

let result1 = performSomeOperation(a: 10, b: 5, operation: additionClosure)
let result2 = performSomeOperation(a: 20, b: 6, operation: subtractionClosure)

print(result1)
print(result2)

// Returning closures from functions

// The last two parameters (Int) -> (Int) means that the return type is a closure. The closure takes an int as a parameter and returns as int.

func multiplyFactor(factor: Int) -> (Int) -> (Int)
{
    let multiplier: (Int) -> Int = {number in
        return number * factor // factor is captured from surrounding context
    }
    
    return multiplier
    
}

let double = multiplyFactor(factor: 2) // These are the multiplier closures
let triple = multiplyFactor(factor: 3)

let r1 = double(10)
let r2 = triple(10)

print("Result 1: \(r1)") //
print("Result 2: \(r2)") //


// Non-Escaping Closures

/*
 1. By default, closures are non-escaping
 2. These closures are guarenteed to be executed before the function they are passed to returns.
 3. This means that the closure does not 'escape' the function's scope.
*/

// Escaping Closures

/*
 
 1. We need to use the @escaping keyword
 2. Escaping a closure can cause a strong reference cycle if you use self inside the closure.
 */

/*
 
    Retain cycle: A retain cycle occurs when two objects hold strong references to each other, preventing either from being deallocated.
 
    To break a retain cycle, we can use weak or unowned references within the closure. This ensures that the closure does not hold a strong reference to self.
    
    
*/
func performOperation(value: Int, operation: (Int) -> Int) -> Int
{
    return operation(value) // The operation closure is guaranteed to be executed before the performOperation function returns.
}

let result = performOperation(value: 10) { (number) in return
    number * 2
}

print(result)

print()
print()
print()


//class A {
//    func receiveData(data: String) {
//        print("Data received: \(data)")
//    }
//}
//
//class B {
//    
//    var sendDataClosure: (String) -> Void
//    init(sendDataClosure: @escaping (String) -> Void) {
//        self.sendDataClosure = sendDataClosure
//    }
//    
//    func sendData()
//    {
//        sendDataClosure("Hello!")
//    }
//    
//}
//
//let a = A()
//let b = B(sendDataClosure: { data in
//    a.receiveData(data: data)
//})

//b.sendData()



class A {
    func receiveMessage(data: String)
    {
        print("Data received: \(data)")
    }
}

class B {
    
    var sendDataClosure:(String) -> Void
    init(sendDataClosure: @escaping (String) -> Void)
    {
        self.sendDataClosure = sendDataClosure
    }
    
    func sendData()
    {
        sendDataClosure("Hello!")
    }
}

let a = A()
let b = B(sendDataClosure: {
    data in a.receiveMessage(data: data)
})

b.sendData()

// Use weak when the referenced object can become nil

class ABC {
    var closure: (() -> Void)?

    func setupClosure() {
        closure = { [weak self] in
            guard let self = self else { return }
            print("Using self within the closure: \(self)")
        }
    }

    deinit {
        print("A is being deinitialized")
    }
}

var weakRef: ABC? = ABC()
weakRef?.setupClosure()
weakRef = nil


// Use unowned when the referenced object will never become nil during the closure's lifetime.
// It assumes that the object will always exist for the closure's lifetime. If object is deallocated from memory before the closure is executed, an error may arise.


// Capturing lists in Swift

var language: String = "C++"

var langClosure = {
     print(language)
}

langClosure()

language = "Swift"

langClosure()
