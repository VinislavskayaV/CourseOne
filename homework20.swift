//
//  homework20.swift
//  CoorseOne
//
//  Created by Виктория Виниславская on 19.07.2022.
//

import Foundation

//1)Расширить String, чтобы принимал сабскрипт вида s[0..<3] и мог также устанавливать значения используя его

extension String {
    subscript(range: Range<Int>) -> String {
        guard range.startIndex >= 0 && range.endIndex < count else { return "" }
        let startIndex = index(startIndex, offsetBy: range.startIndex)
        let endIndex = index(startIndex, offsetBy: range.endIndex - range.startIndex)
        return String(self[startIndex..<endIndex])
    }
}

//2) Расширить Int и добавить 3 метода возведение в квадрат, куб, степень

extension Int {
    func squared() -> Int {
        return self * self
    }
}

extension Int {
    func cube() -> Int {
        return self * self * self
    }
}

extension Int {
    func exponentiation(degree: Double) -> Int {
        return Int(pow(Double(self), degree))
    }
}

//3)Расширить еще 3 структуры на свой вкус и в коментах обосновать для чего это было сделано

extension Double {
    func areaOfCircle() -> Double {
        return Double.pi * pow(self, 2)
    }
}

extension Int {
    func cubeRoot() -> Double {
        return cbrt(Double(self))
    }
}

extension Array where Element == Int {
    func multiplication() -> [Int] {
        return self.map { $0 * 10 }
    }
}

//4)Добавьте проперти, которое возвращает количество символов в числе

extension Int {
    var charactersCount: Int {
        return String(self).count
    }
}

//5)Добавить метод который говорит число положительное или отрицательное

extension Int {
    var even: Bool {
        return self % 2 == 0
    }
    var odd: Bool {
        return !even
    }
    enum IvenOrOdd {
        case even
        case odd
    }
    
    var evenOrOdd: IvenOrOdd {
        return even ? .even : .odd
    }
}

extension Int.IvenOrOdd {
    func sayEvenOrOdd() -> String {
        switch self {
        case .even: return "число четное"
        case .odd: return "число нечетное"
        }
    }
}

let homework20 = {
    
    //1)Расширить String, чтобы принимал сабскрипт вида s[0..<3] и мог также устанавливать значения используя его
    
    let strOne = "Hello, world!"
    print(">>>", strOne[0..<5])
    
    let strTwo = "Good Bye, universe!"
    let start = strTwo.startIndex
    let end = strTwo.index(start, offsetBy: 8)
    let endi = strTwo.index(strTwo.startIndex, offsetBy: 8)
    let range = start..<end
    let substring = strTwo[range]
    
    let strThree = "Good luck"
    print("***", strThree[0..<4])
    
    //2) Расширить Int и добавить 3 метода возведение в квадрат, куб, степень
    
    let number = 555
    let squared = number.squared()
    print(squared)
    number.cube()
    number.exponentiation(degree: 4)
    
    //3)Расширить еще 3 структуры на свой вкус и в коментах обосновать для чего это было сделано
    
    // Вычисление площади круга
  
    let radius = 9.9
    radius.areaOfCircle()
    
    // Вычисление кубического корня из числа

    var numberOne = 27
    numberOne.cubeRoot()
    numberOne = 1728
    numberOne.cubeRoot()
    
    // Умножение каждого элемента массива на число
    
    let arrayOne = [3,5,7,9]
    arrayOne.multiplication()
    let arrayTwo = [10, 20, 30, 40]
    arrayTwo.multiplication()
    
    
    //4)Добавьте проперти, которое возвращает количество символов в числе

    number.charactersCount
    
    
    //5)Добавить метод который говорит число положительное или отрицательное
    
    number.evenOrOdd
    number.evenOrOdd.sayEvenOrOdd()
}
