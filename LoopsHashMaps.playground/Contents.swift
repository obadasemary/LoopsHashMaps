import UIKit

var str = "Hello, playground"

var sampleString = "2018"

// 1. For loops
// 2. Test your Hash Map (Dictionary)

func convert(numberAsWord: String) -> Int? {
//    return Int(numberAsWord) ?? 0
    
    // solve this problem without String to Int conversion code
    
    var total = 0
    
    // apply a simple alhorithm to solove our challenge
    // 1337 = 1000 + 300 + 30 + 7
    // 1337 = 1 * 10^3 + 3 * 10^2 + 3 * 10^1 + 7 * 10^0
    
    let valueMap: [Character: Int] = [
        "0": 0,
        "1": 1,
        "2": 2,
        "3": 3,
        "4": 4,
        "5": 5,
        "6": 6,
        "7": 7,
        "8": 8,
        "9": 9
    ]
    
    for (i, c) in numberAsWord.enumerated() {
        let exponent = numberAsWord.count - i - 1
        if let value = valueMap[(c)] {
            let num = Decimal(value) * pow(10, exponent)
            print(num)
            total += NSDecimalNumber(decimal: num).intValue
        } else {
            return nil
        }
    }
    
    return total
}

convert(numberAsWord: sampleString)

