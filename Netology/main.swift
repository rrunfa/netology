// Copyright © 2020 Nikita Nagaynik. All rights reserved.

import Foundation

// Переменные, константы, типы данных, необязательные типы (Опционалы)

// Обратить внимание на неявное присваивание типа переменной
let apples: Int = 1
let banana = 1

// Тип Bool которыай отвечает на вопрос Да или Нет
let applesVsBanana: Bool = apples > banana

let oranges: Int = 3

// Ошибка присваивания, понятие константы
//banana = oranges

// Введение понятия переменной, нет ошибки присваивания
var mutableBanana = banana
mutableBanana = oranges

// Введение понятия опционального типа, nil - как признак отсутствия значения
var box: Int? = nil

// Ассоциация с коробкой, кладем в нее бананы и апельсины, закрываем коробку
box = banana
box = oranges

// Открываем коробку, введение понятия forceUnwrap
let orangesFromBox = box!

// Высыпаем все что было в коробке, присваиваем nil
box = nil

// Далее в теме про условные операторы развить тему
box = banana
if let bananasFromBox = box {
    print("Bananas in the box: \(bananasFromBox)")
}

// Введение дробных чисел с плавающей точкой
let temperature: Float = 36.6
print("I feel sad: \(temperature + 1.4)")

// Double может хранить в себе большее число чем Float
print("Max float: \(Float.greatestFiniteMagnitude)")
print("Max double: \(Double.greatestFiniteMagnitude)")

// Вычисление площади круга
let radius: Float = 10.0
let area = Float.pi * radius * radius
print("Area = \(area)")
