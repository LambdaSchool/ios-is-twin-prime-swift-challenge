import UIKit


func isTwinPrime(pNumber: Int) -> Bool {

	let twoMore = pNumber + 2
	let twoLess = pNumber - 2


	if checkPrime(number: twoLess) || checkPrime(number: twoMore) {
		return true
	} else {
		return false
	}
}



func checkPrime(number: Int) -> Bool {

	switch number {
	case 1:
		return false
	case 2:
		return true
	case 3:
		return true
	default:
		var n = 2
		while n * n  <= number {
			if number % n == 0 {
			return false
			}
			n = n + 1
		}
		return true
	}
}


isTwinPrime(pNumber: 907)











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
