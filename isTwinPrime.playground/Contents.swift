import UIKit


//Helper Func
func primeNumberOrNot(_ num: Int) -> Bool {
    if num <= 3 {
        return num > 1
    } else if num % 2 == 0 || num % 3 == 0 {
        return false
    }

    var i = 5

    while i * i <= num {
        if num % i == 0 || num % (i + 2) == 0 {
            return false
        }
        i += 6
    }

    return true
}

// Test cases
//print(primeNumberOrNot(23))
//print(primeNumberOrNot(10))
//print(primeNumberOrNot(3))


// My function takes a number and first checks if the number is prime with the helper function. I then create a property to take the 'number' and subject it from 2, then run that number back through the "primeNumberOrNot" func to return whether true or false. 
func isTwinPrime(_ number: Int) -> Bool {
    if primeNumberOrNot(number) {
        let checkedNum = number - 2
        if primeNumberOrNot(checkedNum) {
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
//isTwinPrime(10)  // false
//isTwinPrime(9)   // false
//isTwinPrime(4)   // false
//isTwinPrime(5)   // true
//isTwinPrime(7)   // true
//isTwinPrime(23)  // false
isTwinPrime(37)  // false
isTwinPrime(883) // true
isTwinPrime(907) // false
isTwinPrime(169) // false
