//
//  CycleCalculation.swift
//  core_app
//
//  Created by Luis Silva on 28/03/24.
//

import Foundation

struct CycleCalculation {
    // calcula daqui quantos dias será iniciado o próximo ciclo
    func calculateWhenStartNextCycle(_ lastCyclesDuration: [Int]) -> Int {
        var allTheDuration = 0.0
        var cycles = 0.0
        for duration in lastCyclesDuration {
            allTheDuration += Double(duration)
            cycles += 1
        }

        var result = allTheDuration / cycles

        if (result - Double(Int(result))) >= 0.5 {
            result += 1
        }
        return Int(result)
    }

    // com o resultado de quanto tempo o ciclo durará, obtido da função a cima, verifica em qual dia será a próxima menstruação
    // o dia, o mes e o ano são da data do inicio da ultima mesntruação
    func calculateTheDayOfTheNextCycle(_ day: Int, _ month: Int, _ year: Int, _ duration: Int) -> (Int, Int, Int) {
        let lastDayOfThisMonth = getNumberOfDaysInAMonth(month, year) ?? 30
        var dayOfTheNextStart = day + duration
        var monthOfTheNextStart = month
        var yearOfTheNextStart = year
        if dayOfTheNextStart > lastDayOfThisMonth {
            dayOfTheNextStart -= lastDayOfThisMonth
            monthOfTheNextStart += 1
        }
        if monthOfTheNextStart > month, month == 12 {
            monthOfTheNextStart = 1
            yearOfTheNextStart += 1
        }

        print("Como a ultima menstruação ocorreu \(day)/\(month)/\(year) e a duração média é de \(duration), a próxima começará em \(dayOfTheNextStart)/\(monthOfTheNextStart)/\(yearOfTheNextStart)")

        return (dayOfTheNextStart, monthOfTheNextStart, yearOfTheNextStart)
    }

    func getNumberOfDaysInAMonth(_ month: Int, _ year: Int) -> Int? {
        var components = DateComponents()
        components.year = year
        components.month = month + 1
        components.day = 0
        return Calendar.current.component(.day, from: Calendar.current.date(from: components) ?? Date())
    }
}
