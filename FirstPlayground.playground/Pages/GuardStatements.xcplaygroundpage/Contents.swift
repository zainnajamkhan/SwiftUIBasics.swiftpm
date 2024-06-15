func calculateArea(width: Int, height: Int) -> Int?
{
    guard width > 0, height > 0 else {
        print("Invalid width or height")
        return nil
    }
    return width * height
}

if let result = calculateArea(width: 0, height: 5)
{
    print(result)
}
else
{
    print("Calculation failed")
}
