//
//  homework8.swift
//  CoorseOne
//
//  Created by Viktoria on 27.04.2022.
//

import Foundation

let homework8 = {
    
    //    Пункт 1 Домашней работы №8
    //    Создать цикл в цикле. В первом цикле интервал 200 раз во втором как доедем до 15 выйти со всех циклов:)
    
    for number in 0...200 {
        if number == 15 {
            break
        }
        print(number)
    }
    
    //    Пункт 2 Домашней работы №8
    //    Создать в if и отдельно в switch программу которая будет смотреть на возраст человека и говорить куда ему идти в школу, в садик, в универ, на работу или на пенсию и тд
    
    let peopleAge = 66
    
    if peopleAge <= 6 {
        print("Отправляйтесь в детский сад")
    } else if peopleAge <= 18 {
        print("Отправляйтесь в школу")
    } else if peopleAge <= 65 {
        print("Отправляйтесь на работу")
    } else if peopleAge >= 66 {
        print("Отправляйтесь на пенсию")
    }
    
    
    switch peopleAge {
    case 0...6:
        print("Отправляйтесь в детский сад")
    case 7...18:
        print("Отправляйтесь в школу")
    case 19...65:
        print("Отправляйтесь на работу")
    case 66...99:
        print("Отправляйтесь на пенсию")
    default: break
    }
    
    //    Пункт 3 Домашней работы №8
    //    Создать все циклы for in которые вы знаете
    
    let timesOfDayArray = ["утро", "день", "вечер", "ночь"]
    
    for index in timesOfDayArray {
        print(index)
    }
    
    for counter in 0..<timesOfDayArray.count {
        print(timesOfDayArray[counter])
    }
    
    for index in 0...3 {
        print("Каждое время суток прекрасно, а особенно \(timesOfDayArray[index])")
    }
    
    var reversedView = timesOfDayArray.count - 1
    for index in 0...reversedView {
        print(timesOfDayArray[reversedView-index])
    }
    
    for index in 0..<timesOfDayArray.count {
        print(timesOfDayArray.reversed()[index])
    }
    
    for element in timesOfDayArray.enumerated() {
        print(element)
    }
    
    let timesOfDayDict = ["утро" : "город просыпается" , "день" : "люди учатся и работают", "вечер" : "люди спешат домой", "ночь" : "город засыпает"]
    
    for key in timesOfDayDict.keys {
        print(key)
    }
    
    for value in timesOfDayDict.values {
        print(value)
    }
    
    for (key, value) in timesOfDayDict {
        print("\(key) \(value)")
    }
    
    // Пункт 4 Домашней работы 8
    // В switch и отдельно в if создать систему оценивания школьников по 12 бальной системе и и высказывать через print мнение
    
    let grade = 5
    
    if grade == 0 {
        print("Отвратительно")
    } else if grade == 1 {
        print("Чрезвычайно плохо")
    } else if grade == 2 {
        print("Безобразно")
    } else if grade == 3 {
        print("Ужасно")
    } else if grade == 4 {
        print("Удручающе")
    } else if grade == 5 {
        print("Печально")
    } else if grade == 6 {
        print("Плохо")
    } else if grade == 7 {
        print("Нормально")
    } else if grade == 8 {
        print("Более менее")
    } else if grade == 9 {
        print("Хорошо")
    } else if grade == 10 {
        print("Отлично")
    } else if grade == 11 {
        print("Прекрасно")
    } else if grade == 12 {
        print("Великолепно")
    } else {
        print("Вы ввели недопустимое число")
    }
    
    switch grade {
    case 0...3:
        print("Это нужно переделать")
    case 4...6:
        print("Не лучшая работа")
    case 7...9:
        print("Вы справились, но нет предела совершенству")
    case 10...12:
        print("Вы молодец")
        
    default: break
    }
    
    
    //  Пункт 5 Домашней работы 8
    //  Создайте массив(без тюплов) с именами всех членов вашей семьи включая родственников что б количество имен не менее 10 было и отсортируйте, распечатайте по алфавиту их в консоль
    
    let myFamilyArray = ["Yan", "Sergey", "Maryana", "Justina", "Yaroslava", "Vitaliy", "Svetlana", "Anatoliy", "Vasiliy", "Elena"]
    let sortedArray = myFamilyArray.sorted()
    print(sortedArray)
}

