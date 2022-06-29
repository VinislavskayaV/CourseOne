//
//  homework10.swift
//  CoorseOne
//
//  Created by Viktoria on 11.05.2022.
//

import Foundation

let homework10 = {
    
    // Пункт 1 Домашней работы №10
    // Написать сортировку массива с помощью замыкания, сначала в одну сторону, затем в другую.Вывести всё в консоль.
    
    let shoesSize = [10, 5.5, 6, 6.5, 7, 7.5, 5, 8, 9.5, 10.5, 11, 11.5, 12, 8.5, 9]
    
    print(shoesSize.sorted{ $0 < $1} )
    print(shoesSize.sorted{ $1 < $0} )
    
    
    //  Пункт 2 Домашней работы №10
    //  Создать метод который запрашивает имена друзей, после этого имена положить в массив.
    //  Массив отсортировать по количеству букв в имени.
    
    
    func sortedFriendsNames(friendOne: String, friendTwo: String, friendThree: String, friendFour: String, friendsFive: String, friendSix: String){
        let friendsName = [friendOne, friendTwo, friendThree, friendFour, friendsFive, friendSix]
        let sortedFriendsName = friendsName.sorted { $0.count < $1.count }
        print(sortedFriendsName)
    }
    sortedFriendsNames(friendOne: "Elena", friendTwo: "Mikhail", friendThree: "Yulia", friendFour: "Stepan", friendsFive: "Olesya", friendSix: "Alevtina")
    
    
    //  Пункт 3 Домашней работы №10
    //  Написать функцию которая будет принимать ключи, выводить ключи и значения словаря (Dictionary). Тип ключа и значения выбирайте сами.
    
    
    var brandsDict = [String: String]()
    func brandsPrintDict(key: String, value: String) {
        brandsDict = [key: value]
        for value in brandsDict {
            print(value)
        }
    }
    
    brandsPrintDict(key: "Armani", value: "Giorgio Armani")
    brandsPrintDict(key: "Gucci", value: "Maurizio Gucci")
    brandsPrintDict(key: "Chanel", value: "Coco Chanel")
    
    
    
    //    Пункт 4 Домашней работы №10
    //    Написать функцию, которая принимает пустые массивы(один строковый, второй - числовой) и проверяет их: если пустой - то добавить значения и вывести в консоль
    
    func emptyArray(oneArray: [String], twoArray: [Int]){
        var stringArray = oneArray
        if stringArray.isEmpty {
            stringArray.append("new String element")
            print(stringArray)
        }
        
        var intArray = twoArray
        if intArray.isEmpty {
            intArray.append(0)
            print(intArray)
        }
    }
    
    print(emptyArray(oneArray: [], twoArray: [98]))
    
    //    Пункт 5 Домашней работы №10
    //    Написать 10 своих замыканий на примере сортировок массивов.
    
    let engShoesSize = [10, 5.5, 6, 6.5, 7, 7.5, 5, 8, 9.5, 10.5, 11, 11.5, 12, 8.5, 9]
    
    
    let oneSortType = engShoesSize.sorted { $0 < $1 }
    print(oneSortType)
    
    let twoSortType = engShoesSize.sorted { $1 < $0 }
    print(twoSortType)
    
    let threeSortType = engShoesSize.sorted { (number1: Double, number2: Double) -> Bool in return number1 < number2 }
    print(threeSortType)
    
    let fourSortType = engShoesSize.sorted { (number1, number2) in return number2 < number1  }
    print(fourSortType)
    
    let fiveSortType = engShoesSize.filter { $0 > 3 }
    print(fiveSortType)
    
    let sixSortType = engShoesSize.filter { $0 < 9 }
    print(sixSortType)
    
    
    var patronymic = ["Анатольевна", "Сергеевич", "Денисович", "Павловна", "Петровна"]
    
    
    let sevenSortType = patronymic.sorted { $0 < $1 }
    print(sevenSortType)
    
    let eightSortType = patronymic.sorted { $0.count < $1.count }
    print(eightSortType)
    
    let nineSortType = patronymic.filter { $0.contains("А") }
    print(nineSortType)
    
    let teenSortType = patronymic.filter { $0.hasSuffix("ч") }
    print(teenSortType)
    
    
    // Пункт 6 Домашней работы №10
    // Написать функцию, которая принимает массив, проверяет — пустой или нет. И если пустой — нужно записать туда значения.
    
    func newEmptyArray(array: [String]) {
        var verifiableArray = array
        if verifiableArray.isEmpty {
            verifiableArray.append("new String element")
        }
        print(verifiableArray)
    }
    newEmptyArray(array: [])
    
    
    //     Пункт 7 Домашней работы №10
    //     Написать функцию - сайт который требует имя, фамилию, ник, емейл, пароль. Всё вывести в консоль.
    
    func website(name: String, surname: String, nickname: String, email: String, password: String) {
        let userInfo = [name, surname, nickname, email, password]
        print(userInfo)
    }
    
    print(website(name: "Arina", surname: "Petrova", nickname: "arino4ka", email: "petrova.arina@gmail.com", password: "09099"))
    
    
    //      Пункт 8 Домашней работы №10
    //      Написать функции которые принимают в качестве аргументов массивы и словари и проверяют: пустые или нет. Если пустые — добавляют туда значения и выводят в консоль.
    
    func emptyDictControl(dict: [String:String]) {
        var controlDict = dict
        if controlDict.isEmpty {
            controlDict.updateValue("Tom", forKey: "cat")
        }
        print(controlDict)
    }
    emptyDictControl(dict: [:])
    
    
    func emptyArrayControl(array: [Int]){
        var controlArray = array
        if controlArray.isEmpty {
            controlArray.append(12)
        }
        print(controlArray)
    }
    emptyArrayControl(array: [9])

    
    
}


