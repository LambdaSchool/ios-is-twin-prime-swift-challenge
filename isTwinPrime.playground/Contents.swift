import UIKit

func isTwinPrime(_ value: Int) -> Bool {
    if isPrime(value){
        if isPrime(value + 2) || isPrime(value - 2) {
            return true
        }
    }
    
    return false
}

func isPrime(_ value: Int) -> Bool {
    if value <= 3 {
        return value > 1
    } else if value % 2 == 0 || value % 3 == 0 {
        return false
    }
    
    var i = 5
    
    while i * i <= value {
        if value % i == 0 || value % (i + 2) == 0 {
            return false
        }
        i += 6
    }
    
    return true
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
