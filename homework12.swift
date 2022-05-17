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
        
        init(width: Int, hight: Int) {
            self.width = width
            self.hight = hight
        }
    }
    
    
    func create (name: HouseClass) {
        var productOfProperties = name.hight * name.width
        print(productOfProperties)
    }
    
    create(name: HouseClass(width: 12, hight: 10))
    
    
    func destroy (name: HouseClass) {
        var width = name.width
        var hight = name.hight
        
        var summ = width + hight
        
        if summ == 0 {
            print("Дом разрушен")
        }
    }
    
    destroy(name: HouseClass(width: 0, hight: 0))
    
    
    //    Пункт 2 Домашней работы 12
    //    Создайте класс с методами, которые сортируют массив учеников
    
    class Pupils {
        var pupilsArray = [String]()
        
        init(pupilsArray: [String]) {
            self.pupilsArray = pupilsArray
        }
    }
    
    func sortedPupilsArray(studentData: Pupils) {
        let sortedPupilsArray = studentData.pupilsArray.sorted()
        print(sortedPupilsArray)
        
    }
    
    sortedPupilsArray(studentData: Pupils(pupilsArray: ["Yura", "Konstntin", "Mikhail", "Ilya", "Robert", "Yan"]))
    
    
    //    Пункт 3 Домашней работы 12
    //    Написать свою структуру и пояснить в комментариях - чем отличаются структуры от классов.
    
    
    struct Car {
        var brandName = ""
        var modelName = ""
        var color = ""
        var engineCapacity = 0.0
    }
    
    func carModification(object: inout Car) {
        object.engineCapacity += 0.5
        print(object.engineCapacity)
    }
    
    var car = Car(brandName: "Audi", modelName: "s7", color: "green", engineCapacity: 3.5)
    var car2 = car
    
    
    car.brandName = "Skoda"
    car.modelName = "Rapid"
    car.color = "pink"
    car.engineCapacity = 1.8
    
    car2.brandName = "Mercedes"
    car2.modelName = "GLC"
    car2.color = "red"
    car2.engineCapacity = 2.5
    
    print(car)
    print(car2)
    
    
    /*    Класс и структура - это инструкции для создания экземпляров объектов. Инструкции, которые объединяют свойства и методы объектов.
     Класс - reference type - создается ссылка, изменения в одной структуре влечет изменения в другой. Используется при работе с
     большим объемом данных.
     
     Структуры - value type - при копировании создается экземпляр класса - идентичная копия. При этом изменения в дочернем классе
     не влекут изменения в родительском. Структуры используются в том случае, когда работа осуществляется с небольшим объемом данных.
     
     */
    
    //    Пункт 4 Домашней работы 12
    //    Написать программу, которая называет комбинации в покере
    
    enum Suit: String {
        case Diamonds = "бубновый"
        case Hearts = "червовый"
        case Clubs = "трефовый"
        case Spades = "пиковый"
    }
    
    class Combination {
        
        var fullHouse = "фул хаус"
        var fourOfKind = "каре"
        var straightFlush = "стрит флеш"
        var royalFlush = "роял флеш"
    }
    
    let suit1 = Suit.Diamonds.rawValue
    let suit2 = Suit.Hearts.rawValue
    let suit3 = Suit.Clubs.rawValue
    let suit4 = Suit.Spades.rawValue
    
    let combination = Combination()
    
    print("У Вас \(combination.fullHouse) \(suit1)")
    print("У Вас \(combination.fourOfKind) \(suit2)")
    print("У Вас \(combination.straightFlush) \(suit3)")
    print("У Вас \(combination.royalFlush) \(suit4)")
    
    
    
    
    //    Пункт 5 Домашней работы 12
    //    Написать класс , а в нем метод который будет принимать букву и возвращать все имена, которые начинаются на эту букву.
    
    class NamesOperations {
        
        var names2Array: [String]
        
        init(names: [String]) {
            self.names2Array = names
        }
        
        func namesBy(firstChar: String) -> [String] {
            return names2Array.filter{ $0.hasPrefix(firstChar) }
        }
    }
    
    
    let namesOperations = NamesOperations(names: ["Сергей", "Алексей", "Павел", "Тимофей", "Станислав", "Борис", "Роман", "Александр", "Игорь", "Тарас", "Николай"])
    let names = namesOperations.namesBy(firstChar: "Т")
    print(names)
    
    
    //   Написать метод, который будет принимать массив строк как аргумент и выводить их всех на консоль с новой строки каждое имя.
    
    
    func namesByNewString(stringArray: [String]) {
        for element in 0..<names.count {
            print(names[element])
        }
    }
    
    namesByNewString(stringArray: ["Сергей", "Алексей", "Павел", "Тимофей", "Станислав", "Борис", "Роман", "Александр", "Игорь", "Тарас", "Николай"])
    
    
}
