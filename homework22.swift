//
//  homework22.swift
//  CoorseOne
//
//  Created by Виктория Виниславская on 09.08.2022.
//

import Foundation

let homework22 = {
    
   // 4. Реализовать структуру IOSCollection и создать в ней copy on write
    
    func address(of object: UnsafeRawPointer) -> String {
        let addr = Int(bitPattern: object)
        return String(format: "%p", addr)
    }
    
    func address(off value: AnyObject) -> String {
        return "\(Unmanaged.passUnretained(value).toOpaque())"
    }
    
    struct IOSCollection {
        var dict = ["Father" : "Leon", "Mother" : "Alexandra", "Daughter" : "Kira"]
    }
    
    class Reference<T> {
        var value: T
        init(value: T) {
            self.value = value
        }
    }
    
    struct Receptacle<T> {
        var reference: Reference<T>
        init (value: T) {
            self.reference = Reference(value: value)
        }
        
        var value: T {
            get {
                reference.value
            }
            set {
                guard (isKnownUniquelyReferenced(&reference)) else {
                    reference = Reference(value: newValue)
                    return
                }
                reference.value = newValue
            }
        }
    }
    
    var iosCollection = IOSCollection()
    var receptacleOne = Receptacle(value: iosCollection)
    var receptacleTwo = receptacleOne
    
    address(off: receptacleOne.reference)
    address(off: receptacleTwo.reference)
    
    receptacleTwo.value.dict = ["mother" : "Galina", "father" : "Pavel"]
    
    address(off: receptacleOne.reference)
    address(off: receptacleTwo.reference) //изменился адрес памяти
    
    
    // 5. Создать протокол Hotel с инициализатором который принимает roomCount, после создать class HotelAlfa добавить свойство roomCount и подписаться на этот протокол
    
    class HotelAlfa: Hotel {
        var roomCount: Int
        init(roomCount: Int) {
            self.roomCount = roomCount
        }
    }
    
    // 6. Создать protocol GameDice у него {get} свойство numberDice далее нужно расширить Int так что б когда мы напишем такую конструкцию "let diceCoub = 4 \n diceCoub.numberDice" в консоле мы увидели такую строку - "Выпало 4 на кубике"

    diceCoub.numberDice()

    
    //  7. Создать протокол с одним методом и 2 мя свойствами одно из них сделать явно optional, создать класс, подписать на протокол и реализовать только 1 обязательное свойство
    
    class Water: NutritionalValue {
        var energyValue: Int
        
        init(energyValue: Int) {
            self.energyValue = energyValue
        }
        
        func valuePerKilo() -> String {
            return "Энергетическая ценность продукта - \(energyValue * 10) ккал на килограмм"
        }
    }
    
    let water = Water(energyValue: 1)
    water.valuePerKilo()
}

// 5.

protocol Hotel {
    var roomCount: Int { get }
}

// 6.

protocol GameDice {
    var numberDice: Int { get }
}

extension Int {
    func numberDice() {
        print("Выпало \(diceCoub) на кубике")
    }
}

let diceCoub = 4

// 7.

@objc protocol NutritionalValue {
    var energyValue: Int { get }
    @objc optional var nutrients: String { get }
    
    func valuePerKilo() -> String
}


