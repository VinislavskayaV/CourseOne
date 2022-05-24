//
//  homework13.swift
//  CoorseOne
//
//  Created by Viktoria on 20.05.2022.
//

import Foundation

let homework13 = {
    
//     Пункт 1 Домашней работы №13
//     Создать класс "IOSStudents",добавить ему property: dateOfBirth, skills. Для тренировки.
//     Создавайте свои структуры с разными видами свойств: сохраняемые/не сохраняемые, вычисляемые, свойства типа и т.д.
    
    
    class IOSStudents {
        var dateOfBirth: String
        var skills: String
        
        init(dateOfBirth: String, skills: String) {
            self.dateOfBirth = dateOfBirth
            self.skills = skills
        }
    }
    
    struct Cat {
        static let maxAge = 10
        
        var name: String
        
        var age: Int {
            didSet {
                if age > Cat.maxAge {
                    age = oldValue
                    print("Указано недопустимое значение параметра Возраст")
                } else {
                    print("Возраст кота \(name)", age, "лет")
                }
            }
        }
        
        var color: String
        var breed: String
    }
    
    let catBin = Cat(name: "Bin", age: 4, color: "white", breed: "british chinchilla")
    print(catBin.breed)
    var catTom = Cat(name: "Tom", age: 9, color: "ginger", breed: "scottish")
    catTom.age = 10
    print(catTom.age)
    
    struct AreaOfCircle {
        var radius: Double
        let pi = Double.pi
        var area: Double {
            get {
                return pi * pow(radius, 2)
            }
            set {
                print("Площадь круга = ", newValue, "сантиметров квадратных")
            }
        }
    }
    
    let circleArea = AreaOfCircle(radius: 3.4)
    print(circleArea.area)
    
    
    
/*   Пункт 2 Домашней работы №13
     Написать структуру "CreateTriangle",с двумя свойствами - угол A,угол C.
     И создать 2 вычисляемых свойства - те же угол А,угол С.
     И если мы записываем значения в эти углы - результатом должно быть значение третьего угла.
     Для простоты можно взять прямоугольный треугольник, сумма углов которого равна 180 градусов. */
    
    
    struct CreateTriangle {
        var уголА: Int
        var уголС: Int
        
        var уголВ: Int {
            get {
                return 180 - уголА - уголС
            }
            set {
                print("Угол В = " + "newValue")
            }
        }
    }
    
    var triangle = CreateTriangle(уголА: 45, уголС: 45)
    print(triangle.уголВ)
    
    
    
//     Пункт 3 Домашней работы №13
//     Создать структуру "Резюме"
    
    struct Resume {
        var surname: String
        var name: String
        var position: String
        var experience: String
        var contactDetails: String
        var information: String
    }
    
    var aboutMe = Resume(
        surname: "Vinislavskaya",
        name: "Viktoriya",
        position: "HR",
        experience: "From 2018 to 2020, i worked at Russian Railways as a leading HR specialist. From 2020 to 2021 i worked as an HR specialist at X5 Retail group",
        contactDetails: "phoneNumber: +79097858015, email: viniviktoriya@yandex.ru",
        information: "I am responsible and love to travel")
    
    print(aboutMe.surname, aboutMe.name, aboutMe.position, aboutMe.experience, aboutMe.contactDetails, aboutMe.information)
    
    
//     Пункт 4 Домашней работы №13
//     Создать журнал -  имя, фамилия, оценка. Поставить ограничения.
    
    
    struct Student {
        let firstName: String
        let lastName: String
        let grade: UInt
    }
    
    class Journal {
        
        var studentArray = [Student]()
        
        let maxCharacter = 15
        
        let maxGrade = 5
        
        func addStudent(firstName: String, lastName: String, grade: UInt) {
            if firstName.count <= maxCharacter && lastName.count <= maxCharacter && grade <= maxGrade {
                let student = Student(firstName: firstName, lastName: lastName, grade: grade)
                studentArray.append(student)
            } else {
                print("Недопустимое условие для добавления записи в журнал")
            }
            print("student array now =", studentArray)
        }
    }
    
    var journal = Journal()
    
    journal.addStudent(firstName: "Lena", lastName: "Popova", grade: 7)
    journal.addStudent(firstName: "Lena", lastName: "PopovaPopovaPopova", grade: 6)
    journal.addStudent(firstName: "Lera", lastName: "Petrova", grade: 4)
    
    print(journal.studentArray)
    
    
    
    
//     Пункт 5 Домашней работы №13
//     Написать класс,в котором есть 4 разные функции

    class Car {
        
        static let minEngineCapacityValue = 1.2
        static let maxEngineCapacityValue = 3.5
        static let defaultEngineCapacityValue = 2.0
        
        var brand: String
        var model: String
        var color: String
        var engineCapacity: Double
        
        init(brand: String, model: String, color: String, engineCapacity: Double) {
            self.brand = brand
            self.model = model
            self.color = color
            self.engineCapacity = engineCapacity
            
        }
        
        func emptyFunc() {
            print("Поздравляем c приобретением автомобиля!")
        }
        
        func printFunc(brand: String, model: String, color: String, engineCapacity: Double) {
            print(brand, model, color, engineCapacity)
        }
        
        func controlFunc(brand: String, model: String, color: String, engineCapacity: Double) -> [String] {
            var array = [String]()
            
            let carBrand = brand.capitalized
            array.append(carBrand)
            
            let carModel = model.capitalized
            array.append(carModel)
            
            let carColor = color.capitalized
            array.append(carColor)
            
            var carEngineCapacity = engineCapacity
            
            if engineCapacity > Car.maxEngineCapacityValue {
                carEngineCapacity = Car.defaultEngineCapacityValue
                let newCapacityValue = String(carEngineCapacity)
                array.append(newCapacityValue)
            } else if carEngineCapacity < Car.minEngineCapacityValue  {
                carEngineCapacity = Car.defaultEngineCapacityValue
                let newCapacityValue = String(carEngineCapacity)
                array.append(newCapacityValue)
            } else {
                let newCarEngineCapacity = String(carEngineCapacity)
                array.append(newCarEngineCapacity)
            }
            
            return array
        }
        
        func drive(actionOnPedestrian: () -> Void) {
            print("Еду")
            print("Пешеход вышел на дорогу")
            actionOnPedestrian()
            print("Еду дальше")
        }
    }
    
    let auto = Car(brand: "Skoda", model: "Rapid", color: "black", engineCapacity: 6.0)
    
    auto.emptyFunc()
    
    auto.printFunc(brand: "Skoda", model: "Rapid", color: "black", engineCapacity: 2.0)
    
    print(auto.controlFunc(brand: "SKoda", model: "RApid", color: "black", engineCapacity: 6.0))
    
    let beep = {
        print("BEEEEP!")
    }
    
    auto.drive(actionOnPedestrian: { beep() })
    
//    auto.drive(actionOnPedestrian: beep)
//
//    auto.drive { beep() }
    
}

