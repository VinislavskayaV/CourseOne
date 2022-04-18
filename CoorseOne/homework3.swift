//
//  homework3.swift
//  CoorseOne
//
//  Created by Viktoria on 18.04.2022.
//

import Foundation

let homework3 = {
    //Пункт 1 Домашней работы №3

    var colorGreen = "Green"

    var colorRed: String = "Red"

    var unknowColor: String = ""
    unknowColor = "Yellow"
    print(unknowColor)

    var multiColor = String()
    multiColor = "greyBlue"


    //Пункт 2 Домашней работы 3

    let dailyDistance: Int = 10000
    let dailyWay = String(dailyDistance)
    print(dailyDistance)

    let ringSize: Double = 16.5
    let fingerSize = Float(ringSize)
    print(ringSize)

    let waterVolume: Float = 2.0
    let bottleVolume = Double(waterVolume)
    print(waterVolume)

    //Пункт 3 Домашней работы 3

    var c = "goodAfternoon"
    for c in "goodAfternoon" {
        print(c)
    }

    for item in 1...5 {
        print(item)
    }

    for word in "summer" {
        print(word)
    }

    //Пункт 4 Домашней работы 3

    let myName: String = "Viktoriya"
    let surname = "Vinislavskaya"
    let myAge: Int = 26
    let intToStringAge = String(myAge)
    let address: String = "Moscow, Kochnovskiy driveway 200"
    var hobbys = "travel, walks"
    let employmentСompanies = "RZD, X5 Retail Group"
    let homeTown = "Stavropol"
    let hardSkils = "driving lisence, german"
    let softSkils = "communication, teamwork"

    //Пункт 5 Домашней работы 3

    print("My name is \(myName + " " + surname) " + " , " + "i am \(intToStringAge) years old" + ", " +  "i live in \(address) " + ". " + "My hobby is \(hobbys) " + ". " + "I worked in \(employmentСompanies) " + ". " + "I was born in \(homeTown)" + ", " + "and my hard skills are \(hardSkils)" + ".")
                                                                                                                                     
    //Пункт 6 Домашней работы 3

    let lotion = "La Roshe"
    let shampoo = "Tressemme"
    let showerGel = "Fa"
    let tonic = "Mepsi"
    let cream = "Clarans"
    let toothpaste = "Roxy"
    let deodorant = "Dove"
    let scrub = "Collistar"
    let milk = "DolceMilk"
    let foam = "Nivea"

    print("\(lotion)\t\(shampoo)\t\(showerGel)\t\(tonic)\t\(cream)\t\(toothpaste)\t\(deodorant)\t\(scrub)\t\(milk)\t\(foam)")


    //Пункт 7 Домашней работы 3

    for n in "Viktoriya Vinislavskaya" {
         print(n)
     }

    ////Пункт 8 Домашней работы 3

    var phoneModel: Int = 12
    var brand: String = "Iphone"

    var phone = String(phoneModel) + " " + brand
    print(phone)
}
