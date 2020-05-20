import UIKit

func isPrime(_ number: Int) -> Bool {
    var count: Int = 0
    
    for i in 2..<number {
        if number % i == 0 {
            count += 1
        }
    }
    
    if count > 0 {
        return false
    } else {
        return true
    }
}

func isTwinPrime(_ number: Int) -> Bool {
    var twoUp: Int = (number + 2)
    var twoDown: Int = (number + -2)
    
    var twoUpBool: Bool = {
        return isPrime(twoUp)
    }
    
    var twoDownBool: Bool = {
        return isPrime(twoDown)
    }
    
    if isPrime(number) == false {
        return false
    } else if twoUpBool == true || twoDownBool == true {
        return true
    } else {
        return false
    }
    
}


















//Test cases
isTwinPrime(2)   // false
isTwinPrime(10)  // false
isTwinPrime(9)   // false
isTwinPrime(4)   // false
isTwinPrime(5)   // true
isTwinPrime(7)   // true
isTwinPrime(23)  // false
isTwinPrime(37)  // false
isTwinPrime(883) // true
isTwinPrime(907) // false
isTwinPrime(169) // false
