
import Foundation

let homework6 = {
    
//    Пункт 1 Домашней работы №6
//    Создать 5 разных Tuples с разными типами данных. Один из них должен содержать все месяца года на русском. Второй на английском.
    
    let aboutMeTuple = ("Vika", 26, 1996, 161.5, 48.5)
    let beachBagTuple = ("swimsuit", 1.5, 50, "towel")
    let randomTuple = ("ball", 13, 567, true, false, 6.2)
    let monthsTupleEng = ("january", "february", "march", "april", "may", "june", "july", "august", "september", "october", "november", "december")
    let monthsTupleRus = ("январь", "февраль", "март", "апрель", "май", "июнь", "июль", "август", "сентябрь", "октябрь", "ноябрь", "декабрь")
    
//    Пункт 2 Домашней работы №6
//    Распечатайте Tuples 3-мя разными способами
    
    print(aboutMeTuple)
    let (name, age, yearOfBirth, growth, weight) = aboutMeTuple
    print(name, age, yearOfBirth, growth, weight)
    print(aboutMeTuple.0, aboutMeTuple.1, aboutMeTuple.2, aboutMeTuple.3, aboutMeTuple.4)
    
    print(beachBagTuple)
    let (beachClothes, bootle, spfCream, beachAccessory) = beachBagTuple
    print(beachClothes, bootle, spfCream, beachAccessory)
    print(beachBagTuple.0, beachBagTuple.1, beachBagTuple.2, beachBagTuple.3)
    
    print(randomTuple)
    let (object, numberOne, numberTwo, trueConst, falseConst, sugarLevel) = randomTuple
    print(object, numberOne, numberTwo, trueConst, falseConst, sugarLevel)
    print(randomTuple.0, randomTuple.1, randomTuple.2, randomTuple.3, randomTuple.4, randomTuple.5)
    
    print(monthsTupleEng)
    let (month1, month2, month3, month4, month5, month6, month7, month8, month9, month10, month11, month12) = monthsTupleEng
    print(month1, month2, month3, month4, month5, month6, month7, month8, month9, month10, month11, month12)
    print(monthsTupleEng.0, monthsTupleEng.1, monthsTupleEng.2, monthsTupleEng.3, monthsTupleEng.4, monthsTupleEng.5, monthsTupleEng.6, monthsTupleEng.7, monthsTupleEng.8, monthsTupleEng.9, monthsTupleEng.10, monthsTupleEng.11)
    
    print(monthsTupleRus)
    let (месяц1, месяц2, месяц3, месяц4, месяц5, месяц6, месяц7, месяц8, месяц9, месяц10, месяц11, месяц12) = monthsTupleRus
    print(месяц1, месяц2, месяц3, месяц4, месяц5, месяц6, месяц7, месяц8, месяц9, месяц10, месяц11, месяц12)
    print(monthsTupleRus.0, monthsTupleRus.1, monthsTupleRus.2, monthsTupleRus.3, monthsTupleRus.4, monthsTupleRus.5, monthsTupleRus.6, monthsTupleRus.7, monthsTupleRus.8, monthsTupleRus.9, monthsTupleRus.10, monthsTupleRus.11)
    
//    Пункт 3 Домашней работы №6
//    Создайте пустой Tuples (Можно гуглить)

    var emptyTuple: (key: String, val: Int)? = nil
    
    
//    Пункт 4 Домашней работы №6
//    Создать кортеж с 3-5 значениями. Вывести их в консоль 3 способами.

    var studentDataTuple = ("Vasiliy Ivanov", 18, 2004, 4.3)
    
    print(studentDataTuple)
    print(studentDataTuple.0, studentDataTuple.1, studentDataTuple.2, studentDataTuple.3)
    let (studentName, studentAge, studentYearOfBirth, grade) = studentDataTuple
    print(name, age, yearOfBirth, grade)
    
    
//    Пункт 5 Домашней работы №6
//    Давайте представим, что мы сотрудник ГАИ и у нас есть какое-то количество нарушителей. Задача. Создать кортеж с тремя параметрами. Распечатать.
    
    let violatorsOlegTuple = (overSpeed: 345, drunkDriving: 12, withoutLicense: 35)
    
    print(violatorsOlegTuple)
   
//    Пункт 6 Домашней работы №6
//    Выведите каждый параметр в консоль. Тремя способами.
    
    print(violatorsOlegTuple.overSpeed)
    print(violatorsOlegTuple.drunkDriving)
    print(violatorsOlegTuple.withoutLicense)

    let (violation1, violation2, violation3) = violatorsOlegTuple
    print(violation1)
    print(violation2)
    print(violation3)
    
    print("\(violatorsOlegTuple.overSpeed)")
    print("\(violatorsOlegTuple.drunkDriving)")
    print("\(violatorsOlegTuple.withoutLicense)")
    
//    Пункт 7 Домашней работы №6
//    Создайте второй кортеж — нашего напарника. Значения задайте другие.

    let violatorsIgorTuple = (overSpeed: 305, drunkDriving: 10, withoutLicense: 32)
    
//    Пункт 8 Домашней работы №6
//    Пусть напарники соревнуются: создайте третий кортеж, который содержит в себе разницу между первым и вторым.
    
    let overSpeedCompetitions = (violatorsOlegTuple.overSpeed - violatorsIgorTuple.overSpeed)
    let drunkDrivingCompetitions = (violatorsOlegTuple.drunkDriving - violatorsIgorTuple.drunkDriving)
    let withoutLicenceCompetitions = (violatorsOlegTuple.withoutLicense - violatorsIgorTuple.withoutLicense)
    
    let competitionsTuple = (overSpeedCompetitions, drunkDrivingCompetitions, withoutLicenceCompetitions)
    
    print(competitionsTuple.0, competitionsTuple.1, competitionsTuple.2)
    print("Инспектор Олег поймал на  \(overSpeedCompetitions) нарушителей больше, чем инспектор Игорь. Инспектор Игорь поймал на \(drunkDrivingCompetitions) пьяных водителя меньше. Инспектор Олег поймал на \(withoutLicenceCompetitions) водителя без прав больше, чем инспектор Игорь.")
    print(competitionsTuple)

    
    
}
