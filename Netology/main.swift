// Copyright © 2020 Nikita Nagaynik. All rights reserved.

import Foundation

// Переменные, константы, типы данных, необязательные типы (Опционалы)


// Обратить внимание на неявное присваивание типа переменной

// Константы объявляются с помощью ключевого слова let,
// причем мы можем сказать какого типа будет эта константа явно через :Int - константа целого типа Integer,
// она может принимать только целые значения
// Также, язык нам позволяет немного вольностей и может сам понять какого типа у нас константа,
// мы при объявлении этой константы явно указываем, какое будет у нее значение,
// соответственно сразу есть понимание, что это тип Int, как на примере ниже
let apples: Int = 1
let banana = 1


// Тип Bool которыай отвечает на вопрос Да или Нет

// Если нам необходимо в логике программы ответить на вопрос истинно что-то или ложно, то используем тип Bool
// Он может принимать 2 значения True и False
// Мы можем использовать операторы сравнения, чтобы получить тип Bool
// Например если мы хотим получить ответ: яблок больше чем бананов?
let applesVsBanana: Bool = apples > banana

// Или меньше, причем как и в примере с целыми числами, мы можем опустить явное указание типа
// его присвоят константе за нас
let bananaVsApples = apples < banana

let oranges: Int = 3


// Ошибка присваивания, понятие константы

// Мы до этого говорили о константе, константа это неизменное значение, константная переменная задается
// сразу с начальным значением и его нельзя поменять
// Например если мы захотим присвоить константе значение другой константы,
// то при запуске программы мы получим ошибку, о том что константу нельзя изменить

//banana = oranges


// Введение понятия переменной, нет ошибки присваивания

// Теперь поговорим о переменной, она объявляется ключевым словом var,
// Мы объявляем переменную (var) mutableBanana и присваиваем ей значение константы banana
// Тк это переменная, значит ее значение может меняться с ходом выполнения программы
// и мы можем ей присвоить значение константы oranges например
var mutableBanana = banana
mutableBanana = oranges

// Введение дробных чисел с плавающей точкой

// Также, в языке есть 2 типа данных, которые могут принимать значения вещественных чисел
// Это Float и Double
// Например мы можем объявить константу temperature типа Float и задать ей значение температуры тела
// здорового человека, а потом распечатать значение этой константы с прибавлением 1.4, чтобы сказать что
// человек не здоров

let temperature: Float = 36.6
print("I feel sad: \(temperature + 1.4)")

// Double может хранить в себе большее число чем Float

// Переменные и константы типа Double отличается от Float тем, что Double может хранить в себе
// больший диапазон значений, как отрицательных так и положительных
// Например вызовом greatestFiniteMagnitude у типа мы можем посмотреть
// какое максимальное значение он может в себе хранить
print("Max float: \(Float.greatestFiniteMagnitude)")
print("Max double: \(Double.greatestFiniteMagnitude)")

// Вычисление площади круга
// Как пример использования вещественного типа данных, можем рассмотреть вычисление площади круга
// Мы задаем радиус константой и константу area инициализируем (задаем начальное значение) результатом
// вычисления площади круга S = pi * r^2
// Константа area так же получит тип Float, как результат произведенных вычислений

let radius: Float = 10.0
let area = Float.pi * radius * radius
print("Area = \(area)")


// Введение понятия опционального типа, nil - как признак отсутствия значения

// В языке существует понятие опционального типа, он используется в том случае,
// когда значение может вовсе отсутствовать
// Если значение есть, то можно его достать из опционала

// Для примера можно рассмотреть переменную, назовем ее коробка, она будет типа опциональное целое
// Если начальное значение не задано, то оно по умолчанию равно nil = отсутствие значения
var box: Int?

// Проводя аналогию с коробкой, кладем в нее бананы, закрываем коробку
box = banana

// Если мы хотим посмотреть что внутри опционала, есть возможность развернуть его (открыть коробку)
// Для этого применяется метод принудительного разворачивания (fore unwrap) или метод привязки опционала
// который связан с использованием условных операторов и циклов, которые будут более
// подробно рассмотрены в следующей теме

// Для принудительного разворачивания опционала применяется оператор !, если переменная была типа Int?
// То после этой операции она станет типа Int
// Нужно учесть что есть опастность применения принудительного разворачивания: если в опционале значение
// отсутствовало, то при применении этой операции приложение завершиться с ошибкой
let orangesFromBox = box!

// Если мы хотим обезопасить себя от ошибки, то можем применить метод привязки опционала
// Условный оператор позволяет нам поработать с развернутым типом Int внутри условного оператора, если
// опционал был со значением. Если нет, то условие не выпонится и код внутри оператора if не будет исполнен
if let bananasFromBox = box {
    print("Bananas in the box: \(bananasFromBox)")
}

// Мы можем установить опционал обратно в состояние отсутствие значения
// (Высыпаем все что было в коробке) присвоением nil
box = nil
