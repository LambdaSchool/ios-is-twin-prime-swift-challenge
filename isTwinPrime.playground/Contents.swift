import UIKit

//MARK:- Helper 
func isPrime(_ input: Int) -> Bool {
    guard input >= 2 else { return false }
    
        for i in 2 ..< input {
            if input % i == 0 {
                return false
            }
        }
    
    return true
}



func isTwinPrime(_ input: Int) -> Bool {
    let moreThanTwoNum = input + 2
    let lessThanTwoNum = input - 2
    
    switch (isPrime(input),isPrime(moreThanTwoNum))
    {
        case (true,true):
        return true
        
        case (true,false) where isPrime(lessThanTwoNum):
        return true
        
        default:
        return false
    }

    
}
    

isTwinPrime(2)
isPrime(3)


isPrime(199)
isPrime(9)



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
isTwinPrime(43)
isTwinPrime(41)
