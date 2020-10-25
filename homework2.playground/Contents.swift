import UIKit

//1. Написать функцию, которая определяет, четное число или нет.

func evenNotEven(i:Int){
    if i % 2 == 0{
        print("четное")
    }else{
        print("нечетное")
    }
}
evenNotEven(i: 399)

//2. Написать функцию, которая определяет, делится ли число без остатка на 3.

func three(i:Int){
    if i % 3 == 0{
        print("делится на три")
    }else{
        print("не делится на три")
    }
}
three(i: 1092)

//3. Создать возрастающий массив из 100 чисел.

var array: Array<Int> = []
for i in 1...100{
    array.append(i)
    
}
print(array)


//4. Удалить из этого массива все четные числа и все числа, которые не делятся на 3.
var delete = array.filter{ $0 % 2 != 0 && $0 % 3 == 0}
print(delete)

//5. Написать функцию, которая добавляет в массив новое число Фибоначчи, и добавить при помощи нее 100 элементов.
func fibonacci(_ n: Int) -> [Double] {
    var fibonacci: [Double] = [1, 1]
    (2...n).forEach{ i in
        fibonacci.append(fibonacci[i - 1] + fibonacci[i - 2])
    }
    return fibonacci
}
print(fibonacci(30))

