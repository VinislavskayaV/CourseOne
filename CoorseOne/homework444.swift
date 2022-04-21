
import Foundation



 let homework4 = {
     print(">>> homework4")

 //Пункт 1 Домашней работы №4
 // создать массив "дни в месяцах"
     var daysInMonthsArray = ["31", "28", "31", "30", "31", "30", "31", "31", "30", "31", "30", "31"]


 /*Пункт 2 Домашней работы №4
 элементов содержащих количество дней в соответствующем месяце используя цикл for и этот массив */

     for counter in 0..<daysInMonthsArray.count {
         print(daysInMonthsArray[counter])
     }

 //    for daysInMonth in daysInMonthsArray {
 //        print(daysInMonth)
 //    }
     
 /* Пункт 3 Домашней работы №4
 выведите количество дней в каждом месяце (без имен месяцев) */

     for days in 0..<12 {
         print(daysInMonthsArray[days])
     }


 // Пункт 4 Домашней работы №4
 // Используйте еще один массив с именами месяцев чтобы вывести название месяца + количество дней
     
     var monthsName = ["january", "february", "march", "april", "may", "june", "july", "august", "september", "october", "november", "december"]
     var daysInMonthsArray2 = ["31", "28", "31", "30", "31", "30", "31", "31", "30", "31", "30", "31"]


     for index in 0..<12 {
         print("месяц \(monthsName[index]) насчитывает \(daysInMonthsArray2[index]) дней")
     }

 //    Пункт 5 Домашней работы №4
 //    сделайте тоже самое, но используя массив тюплов с параметрами (имя месяца, кол-во дней)

     let monthsTuple = [("january", 31),
                        ("february", 28),
                        ("march", 31),
                        ("april", 30),
                        ("may", 31),
                        ("june", 30),
                        ("july", 31),
                        ("august", 31),
                        ("september", 30),
                        ("october", 31),
                        ("november", 30),
                        ("december", 31)]

     for (month, daysCount) in monthsTuple {
         print(month, daysCount)
     }


 // Пункт 6 Домашней работы №4
 //сделайте тоже самое, только выводите дни в обратном порядке (порядок в массиве не меняется)
     
     let monthCount = monthsName.count - 1

     for index in 0...monthCount {
         print(monthsName[monthCount - index], daysInMonthsArray2[monthCount - index])
     }

     for index in 0...monthCount {
         print(monthsName.reversed()[index], daysInMonthsArray2.reversed()[index])
     }

 //    Пункт 8 Домашней работы №4
 //    Создайте массив учеников из 12 мальчиков
     
     var guys = ["Vladimir", "Aleksey", "Egor", "Sergey", "Vadim", "Oleg", "Aleksandr", "Pavel", "Anatoliy", "Ruslan"]


 //    Пункт 9 Домашней работы №4
 //    Добавьте 7 девочек: с помощью append и по определённому индексу: см. insert. Выведите результат в консоль.
     

     guys.append("Ekaterina")
     guys.append("Zhanna")
     guys.append("Kira")
     guys.insert("Lesya", at: 4)
     guys.insert("Olga", at: 5)
     guys.insert("Galina", at: 6)
     guys.insert("Katya", at: 9)

     print(guys)

 //    Пункт 7 Домашней работы №4
 //    Удалите 7 учеников так, чтобы получилось 5 мальчиков и 5 девочек. См. Удаление по диапазону. Выведите результат в консоль.
     
     guys.remove(at: 7)
     guys.removeLast(2)
     guys.removeFirst(4)

     //Удаление по диапазону
 //    guys.removeSubrange(3...8)
     
     print(guys)


 //    Пункт 7 Домашней работы №4
 //    Создайте массив оценок от 0 до 5 и второй — от 6 до 10. Объедините два массива в один.
     
     var gradeOne = [1,2,3,4,5]
     var gradeTwo = [6,7,8,9,10]

     gradeOne += gradeTwo
     print(gradeOne)

 //    Пункт 8 Домашней работы №4
 //    Присвойте каждому ученику оценку. Так, чтобы в консоли получилось примерно: «Вася — 5 баллов.Неплохо.».
      

     let gradesDescription = [(1, "отвратительно"), (2, "ужасно"), (3, "очень плохо"), (4, "плохо"), (5, "неплохо"), (6, "нормально"), (7, "хорошо"), (8, "очень хорошо"), (9, "прекрасно"), (10, "превосходно")]

     for index in 0..<guys.count {
         print("\(guys[index]) — \(gradesDescription[index].0) баллов. \(gradesDescription[index].1)")
     }

 //    Пункт 8 Домашней работы №4
 //    Создайте массив из чисел. Числа - это купюры в долларах. Посчитать количество денег и вывести в консоль.
     

     let moneys = [10, 5, 100, 10, 500, 1, 5, 5, 10]

     var summ = 0

     for value in moneys {
         summ += value
     }

     print(summ)

 }
