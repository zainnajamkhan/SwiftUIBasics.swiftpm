enum Beverage
{
    case coffee(size: String)
    case tea(size: String)
    case juice(size: String)
    case soda(size: String)
    case water(size: String)
    

    func isHot() -> Bool
    {
        switch myBeverage
        {
            case .coffee, .tea:
                return true
            case .juice, .soda, .water:
                return false
        }
    }
    
    func getSize() -> String
    {
        switch self {
        case .coffee(let size), .tea(let size), .juice(let size), .soda(let size), .water(let size):
            return size
        }
    }
}

let myBeverage = Beverage.water(size: "large")

//if myBeverage.isHot()
//{
//    print("Your \(myBeverage.getSize()) beverage is hot")
//}
//else
//{
//    print("Your \(myBeverage.getSize()) beverage is cold")
//}


