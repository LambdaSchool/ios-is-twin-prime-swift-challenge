import UIKit


/*
 from wikipedia
 
 Usually the pair (2, 3) is not considered to be a pair of twin primes.[7] Since 2 is the only even prime, this pair is the only pair of prime numbers that differ by one; thus twin primes are as closely spaced as possible for any other two primes.

The first few twin prime pairs are:

    (3, 5), (5, 7), (11, 13), (17, 19), (29, 31), (41, 43), (59, 61), (71, 73), (101, 103), (107, 109), (137, 139), … OEIS: A077800.

Five is the only prime that belongs to two pairs.

Every twin prime pair except ( 3 , 5 ) {\displaystyle (3,5)} {\displaystyle (3,5)} is of the form ( 6 n − 1 , 6 n + 1 ) {\displaystyle (6n-1,6n+1)} {\displaystyle (6n-1,6n+1)} for some natural number n; that is, the number between the two primes is a multiple of 6.[8] As a result, the sum of any pair of twin primes (other than 3 and 5) is divisible by 12.
 */

func isPrime(_ input: Int) -> Bool {
    if input % 2 == 0 {
        return false
    }
    
    let upperBound = Double(input).squareRoot()
    
    let sequence = stride(from: 3, through: upperBound, by: 2)
    
    for i in sequence {
        if input % Int(i) == 0 {
            return false
        }
    }
    
    return true
}


func isTwinPrime(_ input: Int) -> Bool {
    if !isPrime(input) {
        return false
    }
    
    let lower = isPrime(input - 2)
    let upper = isPrime(input + 2)
    
    if lower {
        if (input + (input - 2)) % 12 == 0 {
            return true
        }
    }
    
    if upper {
        if (input + (input + 2)) % 12 == 0 {
            return true
        }
    }
    
    return false
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
