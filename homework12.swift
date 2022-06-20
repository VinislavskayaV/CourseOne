//
//  homework12.swift
//  CoorseOne
//
//  Created by Viktoria on 16.05.2022.
//

import Foundation

let homework12 = {
    
    //  Пункт 1 Домашней работы 12
    //  Написать программу, в которой создать класс House в нем несколько свойств - width, height и несколько методов - create(выводит произведение свойств),destroy(отображает что дом уничтожен)и т.п.
    
    class HouseClass {
        var width = 0
        var hight = 0
        
        init (width: Int, hight: Int) {
            self.width = width
            self.hight = hight
        }
        
        func create (width: Int, hight: Int) -> Int {
            return width * hight
        }
        
        func destroy (width: Int, hight: Int) {
            let summ = width + hight
            if summ == 0 {
                print("Дом разрушен")
            }
        }
    }
    
    let houseParameters = HouseClass.init(width: 10, hight: 12)
    print(houseParameters.create(width: 10, hight: 12))
    print(houseParameters.destroy(width: 0, hight: 0))
    
    
    //    Пункт 2 Домашней работы 12
    //    Создайте класс с методами, которые сортируют массив учеников
    
    class Pupils {
        var pupilsArray = [String]()
        
        init(pupilsArray: [String]) {
            self.pupilsArray = pupilsArray
        }
        
        func sortedPupilsArray(studentName: [String]) -> [String] {
            return studentName.sorted()
        }
    }
    
    let pupilsOperations  = Pupils.init(pupilsArray: [])
    print(pupilsOperations.sortedPupilsArray(studentName: ["Yura", "Konstntin", "Mikhail", "Ilya", "Robert", "Yan"]))
    
        
    
    //    Пункт 3 Домашней работы 12
    //    Написать свою структуру и пояснить в комментариях - чем отличаются структуры от классов.
    
    
    struct Car {
        var brandName: String = "Audi"
        var modelName: String = "S7"
        var color: String = "red"
        var engineCapacity: Double = 2.5
        
        mutating func carModification(newCapacity: Double) {
            self.engineCapacity = newCapacity
        }
    }
    var newCarCapacity = Car(brandName: "Audi", modelName: "S7", color: "red", engineCapacity: 1.8)
    newCarCapacity.carModification(newCapacity: 2.5)
    print(newCarCapacity)
    

    /*    Класс и структура - это инструкции для создания экземпляров объектов. Инструкции, которые объединяют свойства и методы объектов.
     Класс - reference type - создается ссылка, объект класса при изменении его свойства остается тем же объектом с новым значением
     этого свойства. Используется при работе с большим объемом данных. Класс не имеет дефолтного инициализатора. Объекты класса передаются по ссылке.
     
     Структуры - value type - при копировании создается экземпляр класса - идентичная копия. При изменении свойства создается новая с новым значением этого свойства структура. Структуры используются в том случае, когда работа осуществляется с небольшим объемом данных. у структуры есть дефолтный инициализатор. Структуры передаются по значению.
     
     */
    
    //    Пункт 4 Домашней работы 12
    //    Написать программу, которая называет комбинации в покере
    

    class Combination {
        let pokerCombinationArray = ["фул хаус", "каре", "стрит флуш", "роял флеш"]
        
        enum Suit: String {
            case Diamonds = "бубновый"
            case Hearts = "червовый"
            case Clubs = "трефовый"
            case Spades = "пиковый"
        }
        
        func printComboIfExist(suit: Suit, combination: String) {
            if pokerCombinationArray.contains(combination) {
                print("У вас \(suit.rawValue) \(combination)")
            } else {
                print("У вас несуществующая комбинация \(combination)")
            }
        }
    }
    
    let combination = Combination()
    
    combination.printComboIfExist(suit: .Spades, combination: "straight flush")
    combination.printComboIfExist(suit: .Spades, combination: "super-puper straight flush full house")
    
    
    //    Пункт 5 Домашней работы 12
    //    Написать класс , а в нем метод который будет принимать букву и возвращать все имена, которые начинаются на эту букву.
    
    class NamesOperations {
        
        var names: [String]
        
        init(names: [String]) {
            self.names = names
        }
        
        func namesBy(firstChar: String) -> [String] {
            return names.filter{ $0.hasPrefix(firstChar) }
        }
    }
    
    
    let namesOperations = NamesOperations(names: ["Евгений", "Сергей", "Алексей", "Павел", "Тимофей", "Станислав", "Борис", "Роман", "Александр", "Игорь", "Тарас", "Николай"])
    let sortedNames = namesOperations.namesBy(firstChar: "Т")
    print(sortedNames)
    
    
    //   Написать метод, который будет принимать массив строк как аргумент и выводить их всех на консоль с новой строки каждое имя.
    
    
    func namesByNewString(stringArray: [String]) {
        for element in 0..<sortedNames.count {
            print(sortedNames[element])
        }
    }
    
    namesByNewString(stringArray: ["Евгений", "Сергей", "Алексей", "Павел", "Тимофей", "Станислав", "Борис", "Роман", "Александр", "Игорь", "Тарас", "Николай"])
    
    
}
