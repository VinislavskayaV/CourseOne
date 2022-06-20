//
//  homework16.swift
//  CoorseOne
//
//  Created by Viktoria on 02.06.2022.
//

import Foundation

let homework16 = {
    
    
    //    Пункт 1 Домашней работы №16
    //    Создать класс "люди", в этом классе 4 property - "имя", "рост", "вес", "пол", а также будет иметь метод "say(говорит)".
    
    class Human: CustomStringConvertible {
        var name: String
        var growth: Int
        var weight: Int
        var gender: String
        
        init(name: String, growth: Int, weight: Int, gender: String) {
            self.name = name
            self.growth = growth
            self.weight = weight
            self.gender = gender
        }
        
        var description: String {
            "name = \(name), growth = \(growth), weight = \(weight), gender = \(gender)"
        }
        
        func say() -> String {
            return "Hello"
        }
    }
    
    let human = Human(name: "Evgeniy", growth: 189, weight: 90, gender: "male")
    
    //    Создать sub class (наследники) "повар", "менеджер", "борец" и переопределить метод "say(говорит)" в каждом из этих классов.
    //    Создать по одному объекту(экземпляру) каждого класса и объединить их в массив.
    
    class Cook: Human {
        
        override func say() -> String {
            super.say() + " dear guests!"
        }
    }
    
    let cook = Cook(name: "Elena", growth: 165, weight: 55, gender: "female")
    
    
    
    class Manager: Human {
        override func say() -> String {
            super.say() + " dear colleagues!"
        }
    }
    
    let manager = Manager(name: "Sergey", growth: 175, weight: 67, gender: "male")
    
    
    class Fighter: Human {
        override func say() -> String {
            super.say() + " favorite viewers!"
        }
    }
    
    let fighter = Fighter(name: "Vasily", growth: 180, weight: 75, gender: "male")
    
    var peoples = [human, cook, manager, fighter]
    
    
    //    В цикле “for in” пройти по всем элементам массива и вывести в консоль все характеристики каждого объекта (имя, рост и тд) и у каждого вызвать метод "say(говорит)".
    
    for element in peoples {
        print(element.name)
        print(element.growth)
        print(element.weight)
        print(element.gender)
        print(element.say())
    }
    
    //    Создать еще одного наследника от super Class, добавить в него пару новых свойств, добавить в массив и в цикле вывода вывести его свойства как дополнение к свойствам People.
    
    class Developer: Human {
        var iq: Int = 200
        var religion: String = "atheist"
        
        init(name: String, growth: Int, weight: Int, gender: String, iq: Int, religion: String) {
            super.init(name: name, growth: growth, weight: weight, gender: gender)
            self.iq = iq
            self.religion = religion
        }
        
        override func say() -> String {
            super.say() + " guys"
        }
    }
    
    //    let developer = Developer()
    
    let developer = Developer(name: "Andrey", growth: 190, weight: 70, gender: "male", iq: 200, religion: "atheist")
    
    peoples.append(developer)
    
    for element in peoples {
        print(element.name, element.growth, element.weight, element.gender)
        if let newElement = element as? Developer {
            print(newElement.iq, newElement.religion)
        }
    }
    
    //    Вывести все это в обратном порядке(Google в помощь)
    
    for element in peoples.reversed() {
        print(element.name)
        print(element.growth)
        print(element.weight)
        print(element.gender)
        print(element.say())
    }
    
    //    Создать класс "Марсианин" (не наследник класса people!) со своими собственными property (отличными от people) и методом "say" (отличным от people).
    
    class Martian: CustomStringConvertible {
        var skinColor: String
        var favoriteFood: String
        
        init(skinColor: String, favoriteFood: String) {
            self.skinColor = skinColor
            self.favoriteFood = favoriteFood
        }
        
        var description: String {
            "skinColor = \(skinColor), favoriteFood = \(favoriteFood)"
        }
        
        func say() -> String {
            return "Blablabla"
        }
    }
    
    let martian = Martian(skinColor: "yellow", favoriteFood: "bedbugs")
    
    //    Унаследоваться от него и создать пару других классов (Инопланетян) с переопределенным методом "say".
    
    class AlienTom: Martian {
        
        override func say() -> String {
            super.say() + " bebebe!"
        }
    }
    
    class AlienLeo: Martian {
        
        override func say() -> String {
            super.say() + " bububu!"
        }
    }
    
    
    var tom = AlienTom(skinColor: "red", favoriteFood: "flies")
    var leo = AlienLeo(skinColor: "orange", favoriteFood: "cockroaches")
    var martians = [martian, tom, leo]
    print(tom.say())
    
    //        Объединить всех people и Марсианинов в один массив.
    
    var peoplesAndMartians = Array<AnyObject>()
    peoplesAndMartians = [human, cook, manager, fighter, martian, tom, leo]
    
    
    //    В цикле выводить тип объекта (People или Марсианин) перед тем как выводить его свойства и вызывать метод
    
    for element in peoplesAndMartians {
        if element is Human {
            print("Oтносится к типу Human")
            print(element)
        } else if element is Martian {
            print("Oтносится к типу Martian")
            print(element)
        }
    }
}
