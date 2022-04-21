

import Foundation

let homework5 = {

    //Пункт 1 Домашней работы №5
    //Создать 10 разных Dictionary с разными типами данных. Один из них должен содержать все месяца года на русском.Второй на английском
    
    let dictMonthRus = ["месяц 1" : "январь",
                        "месяц 2" : "февраль",
                        "месяц 3" : "март",
                        "месяц 4" : "апрель",
                        "месяц 5" : "май",
                        "месяц 6" : "июнь",
                        "месяц 7" : "июль",
                        "месяц 8" : "август",
                        "месяц 9" : "сентябрь",
                        "месяц 10" : "октябрь",
                        "месяц 11" : "ноябрь",
                        "месяц 12" : "декабрь"]
        
    let dictMonthEng = ["month 1" : "january",
                        "month 2" : "february",
                        "month 3" : "march",
                        "month 4" : "april",
                        "month 5" : "may",
                        "month 6" : "june",
                        "month 7" : "july",
                        "month 8" : "august",
                        "month 9" : "september",
                        "month 10" : "october",
                        "month 11" : "november",
                        "month 12" : "december"]
    
    let dictRelatives = ["mama" : "Yaroslava",
                         "papa" : "Vitaly",
                         "sister" : "Maryana",
                         "brother" : "Paul",
                         "aunt" : "Elena",
                         "uncle" : "Igor",
                         "grandmother" : "Svetlana",
                         "grandfather" : "Igor"]
    
        let carsDict = ["car 1" : "Audi",
                        "car 2" : "Opel",
                        "car 3" : "Toyota",
                        "car 4" : "Kia",
                        "car 5" : "Reno",
                        "car 6" : "Ferrari"]
        
        let bradsDict = ["fridge" : "Liebher",
                         "TV" : "Xiomi",
                         "iron" : "Samsung",
                         "teapot" : "Xiomi",
                         "humidifier" : "Electrolux",
                         "microwave" : "Samsung",
                         "oven" : "Bosch"]
        
        var booksDict = ["Crime" : "Spider",
                         "Science fiction" : "Homosapiens",
                         "Post-apocalyptic" : "Roadside Picnic",
                         "Distopia" : "1984",
                         "Fantasy" : "game of Thrones",
                         "Romance novel" : "The Canterville Ghost",
                         "Western" : "loathsome eight",
                         "Horror" : "shine"]
                        
        var musicDict = ["Classic" : "Beethoven",
                         "Jazz" : "Classic Jazz Collegium",
                         "Rap" : "Eminem",
                         "Electronic" : "Lady Gaga",
                         "Rock" : "Linkin Park",
                         "Disco" : "Donna Summer",
                         "Pop Music" : "Ed Sheeran"]
        
        var farmDict = ["sedative" : "Persen",
                        "antibiotic" : "Pariet",
                        "antipyretic" : "Paracetomol",
                        "painkiller" : "Nurofen",
                        "antiallergic" : "Suprastin",
                        "hormonal" : "Mildronat"]
        
        var shopDict = ["grocery" : "Magnit",
                        "hypermarket" : "Auchan",
                        "cosmetics" : "Rive gauche",
                        "clothing" : "Zara",
                        "shoes" : "CCC",
                        "baby" : "Olant"]
    
    var infrastructureDict = ["stadium" : "Dinamo",
                              "museum" : "Garage",
                              "shopping Mall" : "Aviapark",
                              "gym" : "World Class",
                              "baby park" : "Dream island"]
    
    
    
    
    //Пункт 2 Домашней работы №5
    //Соберите все ключи и значения каждого Dictionary и распечатайте в консоль
    
    print(dictMonthRus.keys)
    print(dictMonthRus.values)
    
    print(dictMonthEng.keys)
    print(dictMonthEng.values)
    
    print(dictRelatives.keys)
    print(dictRelatives.values)
    
    print(carsDict.keys)
    print(carsDict.values)
    
    print(booksDict.keys)
    print(booksDict.values)
    
    print(bradsDict.keys)
    print(bradsDict.values)
    
    print(musicDict.keys)
    print(musicDict.values)
    
    print(farmDict.keys)
    print(farmDict.values)
    
    print(shopDict.keys)
    print(shopDict.values)
    
    print(infrastructureDict.keys)
    print(infrastructureDict.values)
    
    
    //Пункт 3 Домашней работы №5
    //Создайте пустой Dictionary и через условный оператор if проверьте пустой он или нет если пустой то в условии добавьте в него пару значений
    
    var emptyDict = [String:String]()
    
    if emptyDict.isEmpty {
        print("Словарь пустой")
    }
    
    emptyDict.updateValue("Tinkoff", forKey: "creditCard")
    emptyDict.updateValue("Alfa", forKey: "debetCard")
    
    print(emptyDict)
    
    
    
    //Пункт 4 Домашней работы №5
    //Cоздайте словарь — ключ: «иномарка», «значение»: название машины.

    var foreignDict = ["иномарка" : "Audi"]
    
    //Пункт 5 Домашней работы №5
    //Добавьте в него значение по ключу - «отечественная». Распечатайте ключи и значения в консоль. Затем отдельно только значения.

    foreignDict.updateValue("Lada", forKey: "отечественная")
    
    print(foreignDict)
    
    print(foreignDict.keys)
    print(foreignDict.values)
    
    
    //Пункт 6 Домашней работы №5
    //Удалите из словаря иномарку по ключу (двумя способами: через nil и removeValue().

    foreignDict ["иномарка"] = nil
    print(foreignDict)
    
//    foreignDict.removeValue(forKey: "иномарка")
//    print(foreignDict)
    
    //Пункт 7 Домашней работы №5
    //Создайте словарь, где ключ — фамилия солдата, а значение — его приветствие.

    let soldiersDict = ["Иванов" : "Здравия желаю!",
                        "Петров" : "Здравия желаю!",
                        "Сидоров" : "Здравия желаю!",
                        "Карпов" : "Здравия желаю!",
                        "Попов" : "Здравия желаю!",
                        "Новиков" : "Здравия желаю!",
                        "Наумов" : "Здравия желаю!",
                        "Лобанов" : "Здравия желаю!"]
    
    
    //Пункт 8 Домашней работы №5
    //В цикле пройдитесь по всем ключам и распечатайте фамилию каждого солдата. Сделайте тоже самое со значениями и распечатайте приветствие каждого солдата.

    for key in soldiersDict.keys {
        print(" \(key)")
    }
    
    for value in soldiersDict.values {
        print(" \(value)")
    }

}
