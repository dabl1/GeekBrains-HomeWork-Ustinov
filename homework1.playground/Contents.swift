import Foundation
import UIKit

//1.первое задание
let a = 1
let b = -2
let c = -3
var discr: Int = b * b - 4 * a * c; // как возвести число в степень?
print("Дискриминант равен: ",discr)
if discr > 0{
    var x1 = (-b + Int(sqrt(Double(discr)))) // при написании строки 11 и 12 в одной строке , он пишет ошибку, не смог найти другого решения, как вынести в отдельную строку
    x1 = x1 / (2 * a)
    var x2 = (-b - Int(sqrt(Double(discr))))
    x2 = x2 / (2 * a)
    print("Корни уравнений:",x1, x2)
}else if discr == 0{
       let x = -b / (2 * a)
        print("Корень уровнений", x)
}else{ print("Корней нет")}


//2.второе задание
let catetA = 3.2
let catetB = 4.1
let areaTriangle = (catetA * catetB)/2
let hypotenuseC = sqrt(Double(catetA * catetA + catetB * catetB))
let perimetr = (Double)(catetA + catetB) + hypotenuseC

print("Площадь прямоугольного треугольника", NSString(format:"%.1f",areaTriangle ))
print("Гипотенуза прямоугольного треугольника", NSString(format:"%.1f",hypotenuseC))
print("Периметр прямоугольного треугольника", NSString(format:"%.1f",perimetr))

//3. Третье задание *Пользователь вводит сумму вклада в банк и годовой процент. Найти сумму вклада через 5 лет.
// как сделать, чтобы год увеличивался на единицу? знаю на js i++
 
var sumVklad = 1000.00
var percentVklad = 0.1
//percentVklad = percentVklad/100
var year1 = sumVklad + sumVklad * percentVklad
var year2 = year1 + year1 * percentVklad
var year3 = year2 + year2 * percentVklad
var year4 = year3 + year3 * percentVklad
var year5 = year4 + year4 * percentVklad
print("Сумма вклада с процентами через 5 лет", NSString(format:"%.2f",year5))
