// Série Fibonacci
// F[n] = F[n-1] + F[n-2]
// 0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144

func fibonacci(_ n: Int) {

    var num1 = 0
    var num2 = 1

    for _ in 0 ..< n {
    
        let num = num1 + num2
        num1 = num2
        num2 = num
    }
    
    print("Resultado = \(num2)")
}
fibonacci(7)


// Usando recursão
func fibonacciRecursivo(_ num1: Int, num2: Int, steps: Int) {

    if steps > 0 {
        let newNum = num1 + num2
        fibonacciRecursivo(num2, num2: newNum, steps: steps-1)
    }
    else {
        print("Resultado = \(num2)")
    }
}
fibonacciRecursivo(0, num2: 1, steps: 7)