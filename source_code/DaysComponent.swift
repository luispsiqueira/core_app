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
}

struct DaysComponent: View {
    var day: Int
    var month: Int
    var year: Int

    var body: some View {
        let lastDayInTheMonth = getNumberOfDaysInAMonth(month, year) ?? 30
        let type: TypesOfDays = checkTheTypeOfTheDay(lastDayInTheMonth)

        if type == .normalDay {
            Button(action: {
                print("dia \(day) foi clicado")
            }, label: {
                ZStack(alignment: .center) {
                    if day < 10 {
                        Text(" 0\(day)")
                            .font(.custom("Poppins", size: 16))
                            .colorMultiply(.black)
                    } else if day >= 10 {
                        Text(" \(day)")
                            .font(.custom("Poppins", size: 16))
                            .colorMultiply(.black)
                    }
                }.frame(width: 52, height: 68, alignment: .center)
            })
            .background(Color.white)
            .frame(width: 52, height: 68, alignment: .center)
            .cornerRadius(24)
            .colorMultiply(.white)
        } else if type == .dayFromAnotherMonth {
            let dayFromAnotherMonth = getTheDayFromAnotherMonth(day, month, year, lastDayInTheMonth)
            Button(action: {
                print("dia \(dayFromAnotherMonth) foi clicado")
            }, label: {
                ZStack(alignment: .center) {
                    if dayFromAnotherMonth < 10 {
                        Text(" 0\(dayFromAnotherMonth)")
                            .font(.custom("Poppins", size: 16))
                            .colorMultiply(.black)
                    } else if dayFromAnotherMonth >= 10 {
                        Text(" \(dayFromAnotherMonth)")
                            .font(.custom("Poppins", size: 16))
                            .colorMultiply(.black)
                    }
                }.frame(width: 52, height: 68, alignment: .center)
            })
            .background(Color.white)
            .frame(width: 52, height: 68, alignment: .center)
            .cornerRadius(24)
            .colorMultiply(.white)
            .opacity(0.3)
        }
    }

    func getNumberOfDaysInAMonth(_ month: Int, _ year: Int) -> Int? {
        var components = DateComponents()
        components.year = year
        components.month = month + 1
        components.day = 0
        return Calendar.current.component(.day, from: Calendar.current.date(from: components) ?? Date())
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
            return (getNumberOfDaysInAMonth(month - 1, year) ?? 30) + day
        } else {
            return day - lastDay
        }
    }
}

#Preview {
    DaysComponent(day: 1, month: 1, year: 2024)
}
