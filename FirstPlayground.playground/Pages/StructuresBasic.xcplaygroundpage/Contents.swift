//struct Person
//{
//    var firstName : String
//    var lastName : String
//    var age : Int
//    var email : String
//    
//    mutating func changeName()
//    {
//        firstName = "Unknown"
//        print(firstName)
//        
//    }
//    
//    func fullName()
//    {
//        print("\(firstName)" + " " + "\(lastName)")
//    }
//}
//
//var p1 = Person(firstName: "Zain", lastName: "Najam", age: 22, email: "zainnajam@gmail.com")
//p1.fullName()
//p1.changeName()
//
//print()
//
//
//struct Book
//{
//    var title: String
//    var author: String
//    
//    init(title: String, author: String)
//    {
//        self.title = title
//        self.author = author
//    }
//}
//
//
//
//
//var bookDetails = Book(title: "Animal Farm", author: "George Orwell")
//print(bookDetails.author)
//print(bookDetails.title)
//
//print()
//
//struct Student
//{
//    private let id: String
//    
//    init(id: String)
//    {
//        self.id = id
//    }
//    
//    func identify() -> String {
//        return "My social security number is \(id)"
//    }
//}
