//
//  homework1.swift
//  CoorseOne
//
//  Created by Viktoria on 18.04.2022.
//

import Foundation

let homework1 = {
    // Пункт 1 Домашней работы №1
    // Константы

    let number: Int = 23

    let airTemperature: UInt = 7

    let myRingSize: Float = 16.5

    let pi: Double = 3.14159

    let mySurName: String = "Виниславская"


    let minInt = Int.min
    let maxInt = Int.max

    let minInt8 = Int8.min
    let maxInt8 = Int8.max

    let minInt16 = Int16.min
    let maxInt16 = Int16.max

    let minInt32 = Int32.min
    let maxInt32 = Int32.max

    let minInt64 = Int64.min
    let maxInt64 = Int64.max


    let minUInt = UInt.min
    let maxUInt = UInt.max

    let minUInt8 = UInt8.min
    let maxUInt8 = UInt8.max

    let minUInt16 = UInt16.min
    let maxUInt16 = UInt16.max

    let minUInt32 = UInt32.min
    let maxUInt32 = UInt32.max

    let minUInt64 = UInt64.min
    let maxUInt64 = UInt64.max

    let maxDouble = Double.greatestFiniteMagnitude
    let minDouble = -Double.greatestFiniteMagnitude

    let maxFloat = Float.greatestFiniteMagnitude
    let minFloat = -Float.greatestFiniteMagnitude

    // Переменные

    var variableNumber: Int = 42

    var alwaysPositiveValue: UInt = 23

    var short: Float = 23.678

    var long: Double = 23.6484637
    /// city - это город
    var city: String = "Moscow"


    // Пункт 2 Домашней работы №1

    typealias Kilo = Int

    var potato: Kilo = 2
    var tomatoes: Kilo = 5
    var onion: Kilo = 1
    var grape: Kilo = 3

    //Пункт 3 Домашней работы №1

    let someInt: Int = 100

    let intToString = String(someInt)
    print(intToString)

    let amountOfPotatoes: Int = 12

    let intToStringPotatoes = String(amountOfPotatoes)
    print(intToStringPotatoes)


    let value = Float(potato)



    //Пункт 4 Домашней работы №1

    let name: String = "Виктория"
    let patronymic: String = "Витальевна"
    let surName: String = "Виниславская"
    let sex: String = "female"
    var age: Int = 26
    var (hobby, work) = ("плавать", "IOS development")
}
