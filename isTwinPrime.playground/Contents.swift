import UIKit

func isTwinPrime(_ number: Int) -> Bool {
    guard number >= 2     else { return false }
    guard number % 2 != 0 else { return false }
    let lastNumber = number - 2
    guard number.isPrime() && lastNumber.isPrime() else { return false }
    return true
}


// Extension to get prime number
extension Int {
    func isPrime() -> Bool {
        return !stride(from: 3, through: Int(sqrt(Double(self))), by: 2).contains { self % $0 == 0 }
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
