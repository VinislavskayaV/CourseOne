//
//  main.swift
//  CoorseOne
//
//  Created by Viktoria on 15.04.2022.
//

import Foundation

print("Hello, World!")

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

//homeWorkTwo

//Пункт 1 Домашней работы 2

//Тип данных party guest

typealias partyGuest = String

let firstGuest: partyGuest = "Anna"
let secondGuest: partyGuest = "Ellina"
let thirdGuest: partyGuest = "Elizabeth"
let fourthGuest: partyGuest = "Ivan"

var momsFriends: [partyGuest] = ["Max","Michael","Ostin"]

//Тип данных running distance

typealias runningDistance = Int

let shortDistance: runningDistance = 100
let middleDistance: runningDistance = 500
let longDistance: runningDistance = 5000

//Тип данных время круга

typealias lapTime = Double

let circleOne: lapTime = 9.28
let circleTwo: lapTime = 9.34
let circleThree: lapTime = 10.05

//Пункт 2 Домашней работы 2

var intCooki: Int = 25
var doubleCooki: Double = 7.9
var floatCooki: Float = 12.8
var maxiCooki = 70

var resultCooki = intCooki + Int(doubleCooki)


var averageScoreFirst: Double = 4.335
var averageScoreSecond: Float = 5.87

var averageScoreYear = Float(averageScoreFirst) + averageScoreSecond


let chislo: Int = 14
let chisloStroka = String(chislo)
print(chisloStroka)


//Пункт 3 Домашней работы 2

let apple = 12
let bananas = 89

let appleAndBananas = apple + bananas
let appleMinusBananas = apple - bananas
let doubleApple = appleAndBananas + appleMinusBananas

let berry = 2

let appleAndBerry = doubleApple / berry
let fruits = appleMinusBananas * apple - doubleApple / doubleApple
let multiFruits = appleMinusBananas * (apple - doubleApple) / doubleApple

//Изменения для pool request

let appleAndBerryAndFruits = appleAndBerry * fruits

let summa = apple + bananas + appleAndBananas + appleMinusBananas + doubleApple + berry + appleAndBerry + fruits + multiFruits + appleAndBerryAndFruits

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



