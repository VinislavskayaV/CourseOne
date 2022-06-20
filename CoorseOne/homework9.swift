//
//  homework9.swift
//  CoorseOne
//
//  Created by Viktoria on 30.04.2022.
//

import Foundation

let homework9 = {
    
    //    Пункт 1 Домашней работы 9
    //    Создать функцию, которая принимает массив Int и сортирует его по порядку (возрастание). После
    //    этого распечатывает результат в консоль;
    
    func sortedArray(array: [Int]) {
        let sortedArray = array.sorted()
        print(sortedArray)
    }
    sortedArray(array: [3,12,87,56,78])
    
    //    Создать функцию, которая принимает массив String, меняет 1, 2 и 3 элементы и сортирует по
    //    алфавиту. После этого распечатывает результат в консоль;
    
    func sortedStringArray(array: [String]){
        var sortedStringArray = array
        sortedStringArray[0] = "0"
        sortedStringArray[1] = "1"
        sortedStringArray[2] = "2"
        sortedStringArray.sorted()
        print(sortedStringArray)
    }
    sortedStringArray(array: ["34", "fgfgf", "asrs", "67", "56"])
    
    
    //    третья функция принимает 2 массива String и складывает их. После этого распечатывает результат в консоль
    
    func calculatesArray(firstArray: [String], secondArray: [String]) {
        let resultArray = firstArray + secondArray
        print(resultArray)
    }
    
    
    //    2) Создать журнал для учителя, который будет принимать имя студента, профессию и оценку и записывает это все в массив. И внесите 10 студентов туда и распечатаете через цикл for.
    
    
    
    func studentsInSchoolArray(name: String, profession: String, grade: String) {
        
        var schoolArray = [String]()
        
        schoolArray.append(name)
        schoolArray.append(profession)
        schoolArray.append(grade)
        
        for element in schoolArray {
            print(element)
        }
    }
    
    
    studentsInSchoolArray(name: "Aleksey", profession: "doctor", grade: "5")
    studentsInSchoolArray(name: "Oleg", profession: "cook", grade: "5")
    studentsInSchoolArray(name: "Danil", profession: "prosecutor", grade: "4")
    studentsInSchoolArray(name: "Ivan", profession: "policemen", grade: "3")
    studentsInSchoolArray(name: "Anton", profession: "singer", grade: "4")
    studentsInSchoolArray(name: "Kirill", profession: "prosecutor", grade: "4")
    studentsInSchoolArray(name: "Pavel", profession: "auto mechanic", grade: "5")
    studentsInSchoolArray(name: "Grigoriy", profession: "meteorolog", grade: "4")
    studentsInSchoolArray(name: "Nikolay", profession: "pilot", grade: "5")
    studentsInSchoolArray(name: "Valeriy", profession: "artist", grade: "3")
    
    
    //    3) Создать функцию которая принимает имя и фамилию, потом положить это в массив и вывести результат в консоль.
    
    func foolName(firstName: String, secondName: String) {
        var foolName = [String]()
        foolName.append(firstName)
        foolName.append(secondName)
        
        print(foolName)
        
    }
    
    
    //    4) Создайте функцию которая принимает параметры и вычисляет площадь круга.
    
    func circleArea(radius: Double) {
        var circleArea = Double.pi * pow(radius, 2)
        print(circleArea)
    }
    
    circleArea(radius: 9.2)
    
    
    
    
    //    5) Создайте Dictionary с именем ученики , где ключ name и score, а значение (1 тюпл из 5 имен) и (второй тюпл из 5 оценок).И распечатайте только имена по ключу.
    
    var studentDict = ["name": ["Roman", "Olga", "Anastasiya", "Kristina", "Tatyana"],
                       "score": ["5", "4", "3", "5", "4"]]
    
    print(studentDict["name"])
    
    
    //    6) Функция принимает 3 массива String. Задача: сложить их вместе, преобразовать в тип Int и посчитать сумму. Распечатать результат в консоль.
    
    func arrayCalculate(oneArray: [String], twoArray: [String], threeArray: [String]) {
        let resultArray = oneArray + twoArray + threeArray
        
        var intResultArray = [Int]()
        
        for element in resultArray {
            if let intElement = Int(element) {
                intResultArray.append(intElement)
            }
        }
        var sum = 0
        for number in intResultArray {
            sum += number
        }
        print(sum)
    }
    
    arrayCalculate(oneArray: ["2", "18", "32"], twoArray: ["13", "12", "90"], threeArray: ["2", "978"])
    
    
}
