//
//  homework2.swift
//  CoorseOne
//
//  Created by Viktoria on 18.04.2022.
//

import Foundation

let homework2 = {
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

    var intCookie: Int = 25
    var doubleCookie: Double = 7.9
    var floatCookie: Float = 12.8
    var maxiCookie = 70

    var resultCookie = intCookie + Int(doubleCookie)


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
}
