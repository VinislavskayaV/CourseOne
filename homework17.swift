//
//  homework17.swift
//  CoorseOne
//
//  Created by Виктория Виниславская on 20.06.2022.
//

import Foundation


let homework17 = {
    
    
    //    Пункт 1 Домашней работы №17
    //    Описать несколько структур – любой легковой автомобиль и любой грузовик.Структуры должны содержать определенные параметры. Описать перечисление с возможными действиями с автомобилем, добавить метод.
    
    enum Actions {
        enum EngineActions {
            case start
            case stop}
        enum WindowsActions {
            case open
            case close}
        enum CargoActions {
            case load
            case unload}
    }
    
    struct PassengerCar {
        var brandName: String
        var yearOfIssue: Int
        var trunkVolume: Int
        
        var engineCondition : Actions.EngineActions {
            willSet {
                if newValue == .start {
                    print ("engine in \(brandName) \(yearOfIssue) years of issue started")
                } else {print("engine in \(brandName) \(yearOfIssue) years of issue stoped")}
            }
        }
        
        var windowsState: Actions.WindowsActions {
            willSet {
                if newValue == .open {
                    print("windows in \(brandName) \(yearOfIssue) years of issue open")
                } else {print("windows in \(brandName) \(yearOfIssue) years of issue closed")}
            }
        }
        
        var trunkOccupancy: Actions.CargoActions {
            willSet {
                if newValue == .load {
                    print("the cargo in \(brandName) \(yearOfIssue) years of issue is loaded")
                } else {
                    print("the cargo in \(brandName) \(yearOfIssue) years of issue is loaded")
                }
            }
        }
        
    }
    
    
    struct FreightCar {
        var brandName: String
        var yearOfIssue: Int
        var bodyVolume: Double
        
        var engineCondition: Actions.EngineActions {
            willSet {
                if newValue == .start {
                    print ("engine in \(brandName) \(yearOfIssue) years of issue started")
                } else {
                    print("engine in \(brandName) \(yearOfIssue) years of issue stoped")
                }
            }
        }
        
        var windowsState: Actions.WindowsActions {
            willSet {
                if newValue == .open {
                    print("windows in \(brandName) \(yearOfIssue) years of issue open")
                } else {
                    print("windows in \(brandName) \(yearOfIssue) years of issue closed")
                }
            }
        }
        var trunkOccupancy: Actions.CargoActions {
            willSet {
                if newValue == .load {
                    print("the cargo in \(brandName) \(yearOfIssue) years of issue is loaded")
                } else {
                    print("the cargo in \(brandName) \(yearOfIssue) years of issue is loaded")
                }
            }
        }
    }
    
    //    Пункт 4 Домашней работы №17
    //    Инициализировать несколько экземпляров структур. Применить к ним различные действия.
    
    var carOne = PassengerCar(brandName: "Volvo", yearOfIssue: 2020, trunkVolume: 120, engineCondition: .stop, windowsState: .open, trunkOccupancy: .load)
    print(carOne.windowsState = .close)
    
    var carTwo = FreightCar(brandName: "Mercedes", yearOfIssue: 2016, bodyVolume: 1200, engineCondition: .stop, windowsState: .close, trunkOccupancy: .load)
    print(carTwo.engineCondition = .start)
    print(carTwo.windowsState = .open)
    print(carTwo.trunkOccupancy = .unload)
    
    
    
    //    Пункт 5 Домашней работы №17
    //    Положить объекты структур в словарь как ключи! а их названия как строки например
    //    var dict = [structCar: "structCar"]
    
    var dict : [AnyHashable : String] = [carOne.brandName: "Volvo",
                                         carOne.yearOfIssue: "2020",
                                         carOne.trunkVolume: "120",
                                         carOne.engineCondition: "stop",
                                         carOne.windowsState: "open",
                                         carOne.trunkOccupancy: "load",
                                         carTwo.brandName: "Mercedes",
                                         carTwo.yearOfIssue: "2016",
                                         carTwo.bodyVolume: "1200",
                                         carTwo.engineCondition: "stop",
                                         carTwo.windowsState: "close",
                                         carTwo.trunkOccupancy: "load"]
    
    
    //    Пункт 6 Домашней работы №17
    //    Почитать о Capture List (см ссылку ниже) - и описать своими словами и сделать скрин своего примера и объяснения
    
    var number = 12
    
    var closure1 = { [number] in
        //        number += 2 // ошибка компиляции, так как number помещен в список захвата, что делает его неизменемым
        print(number)
    }
    
    var closure2 = {
        number -= 4
    }
    
    closure1()
    closure2()
    
    print(number)
    
    
    //    Мой пример
    
    var string = "It's best day!"
    
    var closureOne = { [string] in
        print(string)
    }
    
    var closureTwo = {
        print(string)
    }
    
    var newString = " Great"
    var closureThree = { [string] in
        print(string + newString)
        //       string = " " // тоже не работает, так как string помещен в список захвата
    }
    
    string = "Bad day:("
    
    closureOne()
    closureTwo()
    closureThree()
    
    //    Вывод: в том случае, когда значение помещено в список захвата в замыкании, оно остается неизменяемым. При помещении в список захвата в замыкании внешнего значения, SWIFT сохраняет это значение даже впосле удаления внешнего блока кода
    
    
    //    Пункт 7 Домашней работы №17
    //    Набрать код, который на белом скрине, понять в чем там проблема и решить эту проблему
    
    
    class Car1 {
        var driver: Man1?
        
        deinit { print("Машина удалена из памяти") }
    }
    
    class Man1 {
        weak var myCar: Car1?
        
        deinit { print("Мужчина удален из памяти") }
    }
    
    
    var man: Man1? = Man1()
    var car: Car1? = Car1()
    
    man?.myCar = car
    car?.driver = man
    
    car = nil
    man = nil
    
    
    
    //    Пункт 8 Домашней работы №17
    //    У нас есть класс мужчины и его паспорта. Мужчина может родиться и не иметь паспорта,
    //    но паспорт выдается конкретному мужчине и не может выдаваться без указания владельца. Чтобы
    //    разрешить эту проблему, ссылку на паспорт у мужчины сделаем обычной опциональной, а ссылку на
    //    владельца у паспорта – константой. Также добавим паспорту конструктор, чтобы сразу
    //    определить его владельца. Таким образом, человек сможет существовать без паспорта, сможет его
    //    поменять или выкинуть, но паспорт может быть создан только с конкретным владельцем и никогда не
    //    может его сменить. Повторить все что на черном скрине и решить проблему соблюдая все правила!
    
    
    class Man {
        var passport: Passport?
        
        deinit {
            print("Мужчина удален из памяти")
        }
    }
    
    class Passport {
        let man: Man
        
        init(man: Man) {
            self.man = man
        }
        
        deinit {
            print("Паспорт удален из памяти")
        }
    }
    
    var man2: Man = Man()
    var pass: Passport? = Passport(man: man2)
    man2.passport = pass
    
}
