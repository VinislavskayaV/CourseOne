//
//  homework15.swift
//  CoorseOne
//
//  Created by Viktoria on 30.05.2022.
//

import Foundation

let homework15 = {
    
    // Пункт 1 Домашней работы №15
    // Создать клаcc, в котором будет 3 проперти мама Папа и дети . Создать sabscript и упорядочить их по индексу.
    
    class MyFamily {
        var mama = "Yaroslava"
        var papa = "Vitaliy"
        var kids = ["Maryana", "Viktoriya"]
        
        subscript(index: Int) -> String? {
            get {
                switch(index ){
                case 0: return mama
                case 1: return papa
                case 2..<(2 + kids.count): return kids[index-2]
                    
                default: return nil
                }
            }
            set {
                let value = newValue ?? ""
                
                switch(index ) {
                case 0: return mama = value
                case 1: return papa = value
                case 2..<(2 + kids.count): return kids[index-2] = value
                default: break
                }
            }
        }
    }
    
    var myFamily = MyFamily()
    
    
    print(myFamily[0])
    print(myFamily[1])
    print(myFamily[2])
    print(myFamily[3])
    
    print(myFamily.kids[0])
    print(myFamily.kids[1])
    
    //   Пункт 2 Домашней работы №15
    //   Создать Индекс который будет принимать число умножать его на 100 и делить на 2
    
    
    struct Calc {
        
        subscript(index: Int) -> Int {
            return index * 100 / 2
        }
    }
    
    var calculate = Calc()
    print(calculate[14])
    
    //   Пункт 3 Домашней работы №15
    //   Создать свой subscript у которого внутри есть оператор if else.
    
    struct Week {
        var monday = "Понедельник"
        var tuesday = "Вторник"
        var wednesday = "Среда"
        var thursday = "Четверг"
        var friday = "Пятница"
        var saturday = "Суббота"
        var sunday = "Воскресенье"
        
        subscript(index: Int) -> String {
            if index == 0 {
                return monday
            } else if index == 1 {
                return tuesday
            } else if index == 2 {
                return wednesday
            } else if index == 3 {
                return thursday
            } else if index == 4 {
                return friday
            } else if index == 5 {
                return saturday
            } else if index == 6 {
                return sunday
            } else {
                return " "
            }
        }
    }
    
    var day = Week()
    print(day[0])
    print(day[6])
    
    
    
    
    //    Пункт 4 Домашней работы №15
    //    Создать класс человек и в нем 3 проперти: имя, возраст, пол.
    

    
    class Human {
        var name: String = "Yan"
        var age: Int = 9
        var gender: String = "boy"
        var aboutHuman: String {
            return "My son name is \(name), he is \(age) months. He is a \(gender)."
        }
        
        func untilTheBirthday() -> String {
            return "Baby is " + String(12 - age) + " month away from birthday."
        }
    }
    
    let humanYan = Human()
    print(humanYan.aboutHuman)
    
    class HumanOne: Human {
        var status = "nice"
        override var aboutHuman: String {
            return "My \(status) name is \(name), she is \(age) months. She is a \(gender)."
        }
        
        override func untilTheBirthday() -> String {
            super.untilTheBirthday() + " It's time to choose gifts."
        }
    }
    
    let humanYustina = HumanOne()
    humanYustina.name = "Yustina"
    humanYustina.age = 11
    humanYustina.gender = "girl"
    print(humanYustina.aboutHuman)
    
    print(humanYan.untilTheBirthday())
    print(humanYustina.untilTheBirthday())
    
    

//        Пункт 5 Домашней работы №15
//        Создать дикшинари который хранит все типы данных которые есть а ключ должен быть только строка
    
    enum dataType: CaseIterable {
        case String
        case Int
        case Double
        case Bool
    }
    
    var dataTypeDict = ["String": (dataType.allCases)]
    
    print(dataTypeDict.keys)
    print(dataTypeDict.values)
    
    for values in dataTypeDict {
        print("\(values)")
    }
    
    for values in dataType.allCases {
        print(values)
    }
    
    print(dataTypeDict["String"])
    print(dataTypeDict)
    
    

    
    
}
