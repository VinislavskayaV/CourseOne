
import Foundation

let homework7 = {
    
    //    Пункт 1 Домашней работы №7
    //    Создать 5 констант со СТРОКАМИ которые содержат цифры и посчитайте их используя новые инструменты.
    
    let rice : String = "2"
    let water : String = "3"
    let chicken: String = "2"
    let carrot: String = "4"
    let onion: String = "1"
    
    if let kiloChicken = Int(chicken),
       let kiloCarrot = Int(carrot),
       let kiloOnion = Int(onion),
       let kiloRice = Int(rice),
       let kiloWater = Int(water) {
        
        let summa = kiloChicken + kiloCarrot + kiloOnion + kiloRice + kiloWater
        print("Summa  = \(summa)")
    }
    
    //    Пункт 2 Домашней работы №7
    //    Создать 3 константы со значением nil.
    
    let childrenUsers : Int? = nil
    
    let nameTeensWondersOfTheWorld : String? = nil
    
    let numberOfOrdersNextYear : Int? = nil
    
    //    Пункт 3 Домашней работы №7
    //    Создать 5 опциональных типов констант и установите им значения.
    
    let supplementInYogurt: String? = "E200, E222"
    let spotSizeOnJacket: Float? = 1.35
    let bloodAlcoholLevel: Double? = 0.3
    let studentInPink: Int? = 1
    let coronavirusTestResult: Bool? = nil
    
    //  Пункт 4 Домашней работы №7
    //  Вспоминаем прошлые уроки : Распечатайте свое имя в цикле for.
    
    let firstName = "Vika"
    
    for index in firstName {
        print(index)
    }
    
    
    //    Пункт 5 Домашней работы №7
    //    Создайте массив с возрастом всех членов вашей семьи и распечатайте в консоли через цикл for.
    
    let myFamily = [("mother", 50),
                    ("father", 53),
                    ("sister", 28),
                    ("niece", 0.8),
                    ("boy", 27),
                    ("son", 0.7)]
    
    for person in myFamily {
        print(person)
    }
}
