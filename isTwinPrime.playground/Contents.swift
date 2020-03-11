import UIKit


func isPrime(_ number: Int) -> Bool {
    if number < 2 {
       return false
    }
    if number == 2 {
        return true
    }
    var flag = true
    let max = number - 1
    for i in 2...max {
        if number % i == 0 {
            flag = false
            break
        }
    }
    return flag
       
}

func isTwinPrime(_ number: Int) -> Bool {
    if isPrime(number) {
        let beforeNumber = number - 2
        if isPrime(beforeNumber) {
            return true
        } else {
            return false
        }
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
