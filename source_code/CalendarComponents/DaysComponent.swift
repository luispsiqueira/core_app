//
//  DaysComponent.swift
//  core_app
//
//  Created by Luis Silva on 26/03/24.
//

import SwiftUI

enum TypesOfDays {
    case normalDay
    case dayFromAnotherMonth
    case periodDays
    case fertileDays
}

struct DaysComponent: View {
    var day: Int
    var month: Int
    var year: Int
    var dayToAppearOnScreen: Int = 0
    @State var opacity = 1.0

    var body: some View {
        let lastDayInTheMonth = CycleCalculation().getNumberOfDaysInAMonth(month, year) ?? 30
        let type: TypesOfDays = checkTheTypeOfTheDay(lastDayInTheMonth)
        let colorOfTheDay: Color = defineTheColorOfTheDay(type)
        let opacityOfTheDay: Double = defineOpacity(type)
        let dayToUseOneCalendar: Int = defineDayToUse(day, month, year, lastDayInTheMonth, type)

        Button(action: {
            print("dia \(dayToUseOneCalendar) foi clicado")
        }, label: {
            ZStack(alignment: .center) {
                if dayToUseOneCalendar < 10 {
                    Text(" 0\(dayToUseOneCalendar)")
                        .font(.custom("Poppins", size: 16))
                        .colorMultiply(.black)
                } else if dayToUseOneCalendar >= 10 {
                    Text(" \(dayToUseOneCalendar)")
                        .font(.custom("Poppins", size: 16))
                        .colorMultiply(.black)
                }
            }.frame(width: 52, height: 68, alignment: .center)
        })
        .background(colorOfTheDay)
        .frame(width: 52, height: 68, alignment: .center)
        .cornerRadius(24)
        .colorMultiply(colorOfTheDay)
        .opacity(opacityOfTheDay)
    }

    func checkTheTypeOfTheDay(_ lastDay: Int) -> TypesOfDays {
        if day < 1 {
            return .dayFromAnotherMonth
        } else if day > lastDay {
            return .dayFromAnotherMonth
        } else {
            return .normalDay
        }
    }

    func getTheDayFromAnotherMonth(_ day: Int, _ month: Int, _ year: Int, _ lastDay: Int) -> Int {
        if day < 1 {
            return (CycleCalculation().getNumberOfDaysInAMonth(month - 1, year) ?? 30) + day
        } else {
            return day - lastDay
        }
    }

    func defineTheColorOfTheDay(_ type: TypesOfDays) -> Color {
        if type == .normalDay {
            return .white
        } else if type == .dayFromAnotherMonth {
            return .white
        } else if type == .fertileDays {
            return CustomColors.calendarSubtitlePeriod.color
        } else if type == .periodDays {
            return CustomColors.calendarSubtitlePeriod.color
        } else {
            return .white
        }
    }

    func defineOpacity(_ type: TypesOfDays) -> Double {
        switch type {
        case .normalDay:
            return 1.0
        case .dayFromAnotherMonth:
            return 0.3
        case .periodDays:
            return 1.0
        case .fertileDays:
            return 1.0
        }
    }

    func defineDayToUse(_ day: Int, _ month: Int, _ year: Int, _ lastDay: Int, _ type: TypesOfDays) -> Int {
        switch type {
        case .normalDay:
            return day
        case .dayFromAnotherMonth:
            return getTheDayFromAnotherMonth(day, month, year, lastDay)
        case .periodDays:
            return 1
        case .fertileDays:
            return 1
        }
    }
}

#Preview {
    DaysComponent(day: 1, month: 1, year: 2024)
}
