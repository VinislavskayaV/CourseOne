//
//  File.swift
//  CoorseOne
//
//  Created by Виктория Виниславская on 26.07.2022.
//

import Foundation

let homework21 = {
    
    //3) Создать любой generic для классов, структур, методов, перечислений( по 1 на каждый).
    //    generic для классов
    
    class ItemsClass<T: Equatable> {
        var list = [T]()
        init(list: [T]) {
            self.list = list
        }
        
        func searchItem(element: T, foundItem: (T?) -> ()) {
            let itemFoundList = self.list.filter { item in
                item == element
            }
            if itemFoundList.isEmpty {
                foundItem(nil)
            }
            else {
                foundItem(itemFoundList.first)
            }
        }
    }
    
    let genericFuncTest = ItemsClass(list: [Int](arrayLiteral: 24,25,26))
    genericFuncTest.searchItem(element: 26) {(result) -> () in
        print(result ?? "Not found")
    }
    
    let genericFuncTestTwo = ItemsClass(list: [String](arrayLiteral: "Masha", "Katya"))
    genericFuncTestTwo.searchItem(element: "Katya") {(result) -> () in
        print(result ?? "Not found")
    }
    
    genericFuncTestTwo.searchItem(element: "ola") {(result) -> () in
        print(result ?? "Not found")
    }
    
    //    generic для структур
    
    struct ItemsStruct<T> {
        var items = [T]()
        mutating func removeFirst() {
            items.removeFirst()
            print("First element has been removed. New array - \(items)")
        }
    }
    
    var nameArray = ItemsStruct(items: [String](arrayLiteral: "Cat", "Dog", "Pig"))
    nameArray.removeFirst()
    
    var numbersArray = ItemsStruct(items: [Int](arrayLiteral: 1,2,3,4,5,6))
    numbersArray.removeFirst()
    
    //    generic для методов
    
    func sortedArray<T: Comparable>(array: [T]) {
        let sortedArray = array.sorted()
        print(sortedArray)
    }
    
    let newNameArray = sortedArray(array: ["Masha", "Katya", "Lera", "Anya"])
    let newDoubleArray = sortedArray(array: [5.6, 7.9, 4.1, 3.4, 20.8])
    
    
    //    generic для enum
    
    enum Result<T> {
        case success(T)
        case error(Error?)
    }
    
    
    //    4) Написать функцию, которая принимает Generic объект и складывает в массив/словарь(на выбор)
    
    func genericInArray<T>(object: T) {
        var arrayOfObjects = [T]()
        let acceptedObject = object
        arrayOfObjects.append(acceptedObject)
        print(arrayOfObjects)
    }
    
    var newObjectInArray = genericInArray(object: "Funny")
    newObjectInArray = genericInArray(object: 12)
    
    //    6) Написать класс на свой вкус(любые методы, проперти) универсального типа. Используя extension, расширить класс, добавить сабскрипт. (потренируйтесь)
    
    let space = Space(stars: ["Polyarnaya", "Castor", "Wasat"], planet: ["Mercury", "Venus", "Earth", "Mars", "Jupiter", "Saturn", "Uranus", "Neptune", "Pluto"])
    space.detection(star: "Alhena", planet: "Hygiea")
    print(space[0])
    print(space[1])
}

class Space<T> {
    
    var stars: [T]
    var planet: [T]
    var spaceObjectCount = 8270
    
    init(stars: [T], planet: [T]) {
        self.stars = stars
        self.planet = planet
    }
    
    
    func detection(star: T,planet: T) {
        var spaceObjects = [T]()
        let stars = star
        let planet = planet
        spaceObjects.append(stars)
        spaceObjectCount += 1
        spaceObjects.append(planet)
        spaceObjectCount += 1
        print("В Солнечной системе обнаружены новые космические объекты - \(spaceObjects). Число космических объектов составляет \(spaceObjectCount)")
    }
}

extension Space {
    subscript(index: Int) -> [T] {
        if index == 0 {
            return stars
        } else {
            return planet
        }
    }
}

