//
//let count = 1...10
//
//for number in count {
//    print("Number is \(number)")
//}
//
//
//let albums = ["Red" , "Orange", "Blue", "Black"]
//for colors in albums {
//    print("The current color is")
//}
//
//// For loop without a constant
//
//for _ in 1...5 {
//    print("Play")
//}
//
//// While Loop
//
//var number = 1
//while number < 10 {
//    print(number)
//    number += 1
//}
//
//// Repeat Loop
//
//let numbers = [1,2,3,4,5,6,7]
//var random: [Int]
//
//repeat {
//    random = numbers.shuffled()
//} while random == numbers
//
//print(random)
//            
//            
//// Break Keyword
//
//var missilesLaunched = 0
//while missilesLaunched < 10
//{
//    missilesLaunched += 1
//    print("Launched missile no. \(missilesLaunched)")
//    
//    if missilesLaunched == 4
//    {
//        break
//    }
//    
//}
//
//// Break from multiple loops
//
//for i in 1...10
//{
//    for j in 1...10
//    {
//        let product = i * j
//        print ("\(i) * \(j) is \(product)")
//        
//        
//        if product == 50
//        {
//            print("It's a bulleye!")
//            break
//        }
//    }
//}
//
//// Continue keyword
//
//for i in 1...10
//{
//    if i % 2 == 0
//    {
//        continue
//    }
//
//    print(i)
//}
