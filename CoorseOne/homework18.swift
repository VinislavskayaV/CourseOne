//
//  homewor18.swift
//  CoorseOne
//
//  Created by Виктория Виниславская on 29.06.2022.
//

import Foundation

let homework18 = {
    
    /* 1) Сделать класс Люди, класса будут проперти родственники, соседи и тд (всё опционально).
     2)Создать нужно более 25 человек.
     3)Посчитать, сколько у этого человека двоюродных Братьев, троюродных Сестёр, Теть, Дядь, И так далее
     */
    
    class People {
        var relatives: Relatives?
        var neighbors: Neighbors?
        var friends: Friends?
    }
    
    class Relatives {
        var parents: [String]?
        var grandParents: [String]?
        var brothers: [String]?
        var sisters: [String]?
        var unclesAndAunts: [String]?
    }
    
    class Neighbors {
        var neighborsOnLeft: [String]?
        var neighborsOnRight: [String]?
    }
    
    class Friends {
        var friends: [String]?
    }
    
    let me = People()
    me.relatives = Relatives()
    me.neighbors = Neighbors()
    me.friends = Friends()
    me.relatives?.parents = ["Vladimir", "Irina"]
    me.relatives?.grandParents = ["Igor", "Kristina"]
    me.relatives?.brothers = ["Aleksey", "Grigoriy", "Yury"]
    me.relatives?.sisters = ["Regina", "Olga"]
    me.relatives?.unclesAndAunts = ["Maxim", "Valentina"]
    me.neighbors?.neighborsOnLeft = ["Rima", "Pavel", "Tanya", "Sergey", "Evgeny", "Anna"]
    me.neighbors?.neighborsOnRight = ["Artem", "Zhanna", "Konstantin", "Andrey"]
    me.friends?.friends = ["Anastasiya", "Andrey", "Elena", "Roman", "Fedya"]
    
    
    
    if let parents = me.relatives?.parents {
        print(parents.count)
    } else {
        print("У меня нет родителей")
    }
    
    if let grandParents = me.relatives?.grandParents {
        print(grandParents.count)
    } else {
        print("У меня нет дедушек и бабушек")
    }
    
    if let brothers = me.relatives?.brothers {
        print(brothers.count)
    } else {
        print("У меня нет братьев")
    }
    
    if let sisters = me.relatives?.sisters {
        print(sisters.count)
    } else {
        print("У меня нет сестер")
    }
    if let unclesAndAunts = me.relatives?.unclesAndAunts {
        print(unclesAndAunts.count)
    } else {
        print("У меня нет дяди и тети")
    }
    if let neighborsOnLeft = me.neighbors?.neighborsOnLeft {
        print(neighborsOnLeft.count)
    } else {
        print("У меня нет соседей справа")
    }
    if let neighborsOnRight = me.neighbors?.neighborsOnRight {
        print(neighborsOnRight.count)
    } else {
        print("У меня нет соседей справа")
    }
    if let friends = me.friends?.friends {
        print(friends.count)
    } else {
        print("у меня нет друзей")
    }
    
    /*4)Создать касс животных и проперти - корова, коза, собака и тд
     5)Создать класс растения и проперти - трава, цветы и тд
     6)Положить их всех в массив и отсортировать по алфовиту и по классу - Люди - животные - растения */
    
    class Animals: CustomStringConvertible {
        var cow: String
        var goat: String
        var dog: String
        
        init(cow: String, goat: String, dog: String) {
            self.cow = cow
            self.goat = goat
            self.dog = dog
        }
        
        var description: String {
            "cow = \(cow), goat = \(goat), dog = \(dog)"
        }
    }
    
    class Plants: CustomStringConvertible{
        var grass: String
        var flowers: String
        var bushes: String
        
        init(grass: String, flowers: String, bushes: String) {
            self.grass = grass
            self.flowers = flowers
            self.bushes = bushes
        }
        
        var description: String {
            "grass = \(grass), flowers = \(flowers), bushes = \(bushes)"
        }
    }
    
    
    var animalsAndPlantsArray: [AnyObject] = [
        Animals(cow: "Masha", goat: "Katya", dog: "Bobik"),
        Plants(grass: "Basil", flowers: "Roses", bushes: "Azalea"),
        Animals(cow: "Birch", goat: "Asya", dog: "Gav"),
        Plants(grass: "Parsley", flowers: "Carnations", bushes: "Barberry"),
        Plants(grass: "Thyme", flowers: "Chrysanthemum", bushes: "Weigela"),
        Animals(cow: "Pearl", goat: "Marusya", dog: "Gav"), Plants(grass: "Rosemary", flowers: "Peonies", bushes: "Grape"), Animals(cow: "Burenka", goat: "Belka", dog: "Cherry"), Plants(grass: "Sage", flowers: "Aster", bushes: "Kerria")
    ]
    
    
    var animalsArray = [Animals]()
    var plantsArray = [Plants]()
    
    for element in animalsAndPlantsArray {
        if let animals = element as? Animals {
            animalsArray.append(animals)
        } else if let plants = element as? Plants {
            plantsArray.append(plants)
        }
    }
    
    var sortedAnimalsAndPlantsArray: [AnyObject]
    = animalsArray.sorted { $0.cow < $1.cow }
    + plantsArray.sorted { $0.bushes < $1.bushes }
    
    print(sortedAnimalsAndPlantsArray)
}
