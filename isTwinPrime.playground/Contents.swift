import UIKit

func isTwinPrime(_ a: Double) -> Bool {
    
    for num in 1..<1000 {
        a / Double(num)
    }
}












//Test cases
//isTwinPrime(2)   // false
//isTwinPrime(10)  // false
//isTwinPrime(9)   // false
//isTwinPrime(4)   // false
//isTwinPrime(5)   // true
//isTwinPrime(7)   // true
//isTwinPrime(23)  // false
//isTwinPrime(37)  // false
//isTwinPrime(883) // true
//isTwinPrime(907) // false
//isTwinPrime(169) // false
