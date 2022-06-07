// madLib
function madLib(verb, adj, noun) {
    console.log(`We shall ${verb.toUpperCase()} the ${adj.toUpperCase()} ${noun.toUpperCase()}.`)
}

// madLib('make', 'best', 'guac');


// isSubstring
function isSubstring(searchString, subString) {
    let arr = searchString.split(" ");
    for(let i = 0; i < arr.length - 1; i++) {
        if (arr[i] === subString) {
            return true;
        }else {
            return false;
        }
    }
}

// console.log(isSubstring("time to program", "time"));
// console.log(isSubstring("Jump for joy", "joys"));


// fizzBuzz

function fizzBuzz(array) {
    let newArr = [];
    for(let i = 0; i < array.length - 1; i++) {
        if ((array[i] % 3 === 0 && array[i] % 5 !== 0) || (array[i] % 3 !== 0 && array[i] % 5 === 0)) {
            newArr.push(array[i]);
        }
    }
    return newArr
}

// console.log(fizzBuzz([1, 4, 3, 6, 10, 15])); // => [3, 6, 10]


// isPrime

function isPrime(number) {
    if (number < 2) return false;
    for(let i = 2; i < number; i++) {
        if (number % i === 0) {
            return false;
        }
    }
    return true;
}

// console.log(isPrime(2));
// console.log(isPrime(10));
// console.log(isPrime(15485863));
// console.log(isPrime(3548563));


// sumOfNPrimes

function sumOfNPrimes(n) {
    let newArr = [];
    let sum = 0;
    let i = 2;
    while (newArr.length <= n) {
        if (isPrime(i)) {
            newArr.push(i)
        }
        i++;
    }
    for(let j = 0; j < newArr.length - 1; j++) {
        sum += newArr[j]
    }
    return sum;
}

console.log(sumOfNPrimes(0));
console.log(sumOfNPrimes(1));
console.log(sumOfNPrimes(4));
