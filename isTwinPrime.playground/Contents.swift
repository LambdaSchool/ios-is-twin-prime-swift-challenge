import UIKit


func checkIfPrime(for number: Int) -> Bool {
    var isPrime: Bool = false
    
    if number <= 1 {
        isPrime = false
    } else if number == 2 || number == 3 {
        isPrime = true
    } else if number % 2 == 0 || number % 3 == 0 {
        isPrime = false
    }
    for int in stride(from: 5,
                      to: number,
                      by: 6) {
                        if number % int == 0 {
                            isPrime = false
                            break
                        }
    }
    return isPrime
}

func isTwinPrime(_ number: Int) -> Bool {
    var isTwinPrime: Bool = false
    
    if checkIfPrime(for: number) && checkIfPrime(for: (number + 2)) == true {
        isTwinPrime = true
    }
    return isTwinPrime
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
