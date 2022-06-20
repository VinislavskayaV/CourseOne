//
//  homework11.swift
//  CoorseOne
//
//  Created by Viktoria on 12.05.2022.
//

import Foundation

let homework11 = {
    
    //    Пункт 1 Домашней работы №11
    //    Создайте по 1-2 enum разных типов.
    
    enum AsianCountries {
        case Cambodia
        case Japan
        case Iran
        case China
        case Indonesia
    }
    
    enum EuropeanCountries {
        case Germany, Austria, Belgium, Spain, Italy, France
    }
    
    enum NordAmericaCountries {
        case Bahamas, Barbados, Belize, Grenada, Guatemala
    }
    
    let vacationСountry = NordAmericaCountries.Bahamas
    switch vacationСountry {
    case .Bahamas:
        print("Lucky you! Your vacation will be great!")
    case .Barbados:
        print("Exciting adventures in the wild are waiting for you")
    case .Belize:
        print("Truly a piece of paradise")
    case .Grenada:
        print("We hope a secluded vacation among the tropical jungle for you")
    case .Guatemala:
        print("Volcanoes, rainforests and ancient Mayan cities")
    }
    
    enum SouthsAmericaCountries: CaseIterable {
        case Argentina, Bolivia, Brazil, Venezuela, Gviana, Guyana, Colombia, Paraguay
    }
    
    let southsAmericaCountriesCount = SouthsAmericaCountries.allCases.count
    print(southsAmericaCountriesCount)
    
    for countries in SouthsAmericaCountries.allCases {
        print(countries)
    }
    
    //  Пункт 2 Домашней работы №11
    //  Создайте несколько своих enum, названия какие хотите: например, анкета сотрудника - пол, возраст,ФИО, стаж. Используйте switch как в видео.
    
    enum EmployeeProfile {
        case name
        case gender
        case age
        case experience
    }
    
    let requestedData = EmployeeProfile.name
    switch requestedData {
    case .name:
        print("Введите ваше имя")
    case .age:
        print("Введите ваш возраст")
    case .gender:
        print("Введите ваш пол")
    case .experience:
        print("Введите ваш стаж")
    }
    
    //    Пункт 3 Домашней работы №11
    //    Создать enum со всеми цветами радуги. Создать функцию, которая содержит названия разных предметов или объектов.
    //    Пример результата в консоли "apple green", "sun red" и т.д.
    
    enum ColorsOfRainbow {
        case red , orange, yellow, green, blue, indigo, violet
    }
    
    func objectByColor(color: ColorsOfRainbow) {
        switch color {
        case .red:
            print("tomatoes red")
        case .orange:
            print("carrot orange")
        case .yellow:
            print("lemon yellow")
        case .green:
            print("apple green")
        case .blue:
            print("sky blue")
        case .indigo:
            print("blueberry indigo")
        case .violet:
            print("flower violet")
        }
    }
    objectByColor(color: ColorsOfRainbow.yellow)
    
    //    Пункт 4 Домашней работы №11
    //    Создать функцию, которая выставляет оценки ученикам в школе.
    
    enum Grade {
        case One
        case Two
        case Three
        case Four
        case Five
    }
    
    func studentGrade(grade: Grade){
        switch grade {
        case .One:
            print("Ваша оценка - 1 балл.")
        case .Two:
            print("Ваша оценка - 2 балла.")
        case .Three:
            print("Ваша оценка - 3 балла.")
        case .Four:
            print("Ваша оценка - 4 балла.")
        case .Five:
            print("Ваша оценка - 5 баллов.")
        }
    }
    studentGrade(grade: Grade.Two)
    
    
    //    Пункт 5 Домашней работы №11
    //    Создать программу, которая "рассказывает" - какие автомобили стоят в гараже.
    
    enum CarsInGarage {
        case Audi, Mercedes, Opel, Skoda, Mazda, Toyota
    }
    
    func cars(car: CarsInGarage) {
        switch car {
        case .Audi:
            print("В гараже стоит Audi")
        case .Mercedes:
            print("В гараже стоит  Mercedes")
        case .Opel:
            print("В гараже стоит Opel")
        case .Skoda:
            print("В гараже стоит Skoda")
        case .Mazda:
            print("В гараже стоит Mazda")
        case .Toyota:
            print("В гараже стоит Toyota")
        }
    }
    cars(car: CarsInGarage.Toyota)
    
    
    
    //        Пункт 6 Домашней работы №11
    //        Напишите как понимаете enumerations: что это такое, в чем их смысл, зачем нужны. Ваше личное мнение: как и где их можно использовать?
    
//    Enum - тип данных для значений, которые находятся в одном ассоциативном ряду. Enum позволяет объединять элементы, относящиеся к разным типам данных. Enum способствует уменьшению количества строк кода и повышению читабельности кода. Нельзя добавлять и убирать элементы Enum.
    
//    Enum можно использовать в тех случаях, когда существуют элементы, относящиеся к одному или разным типам данных и которые удобно объединяются одной ассоциацией.
    
    
    
    
    //         Пункт 7 Домашней работы №11
    //         Написать по 5-10 enum разных типов + создать как можно больше своих enumerations. Главное, соблюдайте правила написания: понятность и заглавная буква в начале названия. Пропустите их через switch и распечатайте (см.видео).

    enum TimesOfDay {
        case morning, day, evening, night
    }
    
    
    enum Figures {
        case circle
        case square
        case rectangle
        case oval
        case rhombus
    }
    
    let geometricFigure = Figures.oval
    
    switch geometricFigure {
    case .circle:
        print("Circle")
    case .square:
        print("Square")
    case .rectangle:
        print("Rectangle")
    case .oval:
        print("Oval")
    case .rhombus:
        print("Rhombus")
    }
    
    enum Materials {
        case leather
        enum Wood {
            case pine
            case oak
            case elm}
        case textiles
        case metal
    }
    
    let countertop = Materials.Wood.oak
    
    switch countertop {
    case .oak:
        print("Tabletop made of oak")
    case .elm:
        print("Tabletop made of elm")
    case .pine:
        print("Tabletop made of pine")
    }
    
    enum Sport {
        case swimming(meters: Int, speed: Int)
        case skiing(meters: Int, time: Int)
        enum SportGames {
            case tennis(score: String)
            case football(score: String)
            case volleyball(score: String)
        }
    }
    
    let winterSportDistance = Sport.skiing(meters: 1100, time: 2)
    
    switch winterSportDistance {
    case .skiing(let meters, let time) where meters < 1000:
        print("К сожалению, Вы не прошли дистанцию")
    case .skiing(let meters, let time) where meters > 1000:
        print("Поздравляем, Вы дошли до финиша!")
        
    default:
        break
    }
    
    
    enum SportGames: String {
        case football
        case tennis
        case volleyball
    }
    
    enum KindOfSport {
        case swimming
        case skiing
        case SportGames(games: SportGames)
    }
    
    let sportsClub = KindOfSport.SportGames(games: SportGames.football)
    
    switch sportsClub {
    case .swimming:
        print("Плавание отлично тренирует все группы мышц.")
    case .skiing:
        print("Горные лыжи - достаточно экстремальный вид спорта.")
    case .SportGames(games: SportGames.football):
        print("Футбол - доступный вид спорта")
    case .SportGames(games: SportGames.tennis):
        print("Теннис - один из дорогих видов спорта.")
    case .SportGames(games: SportGames.volleyball):
        print("Волейбол - любимая игра российских школьников.")
    }
    
    
    enum Weather: CaseIterable {
        case temperature
        case cloudiness
        case precipitation
        case wind
    }
    
    for weatherType in Weather.allCases {
        print(weatherType)
    }
    
    //  Пункт 8 Домашней работы №11
    //  Создайте своё резюме с использованием enum: имя, фамилия, возраст, профессия, навыки, образование, хобби и т.д. - пункты на ваше усмотрение.
    
    enum AboutMe {
     case name(String), surname(String), age(Int), profession(String), skills(String), education(String), hobby(String)
     }
     
     let name = AboutMe.name("Виктория")
     let surName = AboutMe.surname("Виниславская")
     let age = AboutMe.age(26)
     let profession = AboutMe.profession("HR")
     let skills = AboutMe.skills("Вождение автомобиля, знание немецкого языка, коммуникабельность")
     let education = AboutMe.education("РУТ, Управление персоналом организации")
     let hobby = AboutMe.hobby("Путешествия")
    
    
    
    //    Пункт 9 Домашней работы №11
    //    Пропустите ваше резюме сначала через if else, затем через switch — для того, чтобы было понимание читаемости и красоты кода.
    //    Дайте свою оценку первому и второму варианту написания.
    
    
    /* enum AboutMe {
        case name, surname, age, profession, skills, education, hobby
    }
    
    //   через if else
    //   данный способ выглядит более громоздким и менее читабельным.
    
    var resume = AboutMe.hobby
    
    if resume == AboutMe.name {
        print("Меня зовут Виктория")
    } else if resume == AboutMe.surname {
        print("Моя фамилия Виниславская")
    } else if resume == AboutMe.age {
        print("Мне 26 лет")
    } else if resume == AboutMe.profession {
        print("Моя профессия - HR")
    } else if resume == AboutMe.skills {
        print("Мои навыки - умение водить автомобиль и знание немецкого языка. А еще я коммуникабельна и умею работать в команде")
    } else if resume == AboutMe.education {
        print("Я окончила РУТ по специальности Управление персоналом организации")
    } else if resume == AboutMe.hobby {
        print("Я люблю путешествовать")
    }
    
    //    через switch
    //    С помощью метода switch можно неплохо съэкономить время. Ну и выглядит код сильно понятнее и красивее
    
    switch resume {
    case .name:
        print("Меня зовут Виктория")
    case .surname:
        print("Моя фамилия Виниславская")
    case .age:
        print("Мне 26 лет")
    case .profession:
        print("Моя профессия - HR")
    case .skills:
        print("Мои навыки - умение водить автомобиль и знание немецкого языка. А еще я коммуникабельна и умею работать в команде")
    case .education:
        print("Я окончила РУТ по специальности Управление персоналом организации")
    case .hobby:
        print("Я люблю путешествовать")
    } */
    
    //  Пункт 10 Домашней работы №11
    //  Представьте, что вы попали на завод Apple. Вам принесли MacBook, Iphone, Ipad, Apple Watch и сказали: «Раскрась их в разные цвета. Джони Айву нужно вдохновение».
    //  Вы подвисли и начали раскрашивать. В итоге у вас получился красный MacBook, зеленый Ipad, розовый Iphone и буро-коричневый Apple Watch.
    //  Инструкция: для цветов задаём через enumeration. Наши девайсы располагаем в теле функции.
    //  Итог программы: «Айфон — розовый».
    
    enum DeviceColor {
        case красный, зеленый, розовый, бурокоричневый
    }
    
    func coloringDevice(color: DeviceColor) {
        switch color {
        case .красный:
            print("MacBook - красный ")
        case .зеленый:
            print("IRad - зеленый")
        case .розовый:
            print("IPhone - розовый")
        case .бурокоричневый:
            print("Apple Watch - буро-коричневый")
        }
    }
    
    coloringDevice(color: DeviceColor.розовый)
    
}
