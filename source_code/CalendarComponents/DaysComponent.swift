//
//  DaysComponent.swift
//  core_app
//
//  Created by Luis Silva on 26/03/24.
//

import SwiftUI

enum ArrangeDaysComponent {
    case normalDay
    case dayFromAnotherMonth
}

enum TypeOfTheDays {
    case periodDays
    case fertileDays
    case normalDay
    case anotherMonth
}

struct DaysComponent: View {
    var day: Int
    var month: Int
    var year: Int
    var dayToAppearOnScreen: Int = 0
    @State var opacity = 1.0
    @State var thereIsInput: Bool = true

    @Binding var dayClick: Int
    @Binding var monthClick: Int
    @Binding var yearClick: Int

    var body: some View {
        let lastDayInTheMonth = CycleCalculation().getNumberOfDaysInAMonth(month, year) ?? 30
        let arrenge: ArrangeDaysComponent = arrangeOfTheDay(lastDayInTheMonth)
        let type: TypeOfTheDays = verifyTheTypeOfTheDay(day, month, year, lastDayInTheMonth)
        let colorOfTheDay: Color = defineTheColorOfTheDay(type)
        let opacityOfTheDay: Double = defineOpacity(type)
        let dayToUseOneCalendar: Int = defineDayToUse(day, month, year, lastDayInTheMonth, arrenge)

        ZStack {
            Button(action: {
                print("dia \(dayToUseOneCalendar) foi clicado")
            }, label: {
                ZStack(alignment: .center) {
                    if dayToUseOneCalendar < 10 {
                        Text("0\(dayToUseOneCalendar)")
                            .font(.custom("Poppins", size: 16))
                            .colorMultiply(.black)
                    } else if dayToUseOneCalendar >= 10 {
                        Text("\(dayToUseOneCalendar)")
                            .font(.custom("Poppins", size: 16))
                            .colorMultiply(.black)
                    }
                }
                .frame(width: 52, height: 68, alignment: .center)
            })
            .colorMultiply(colorOfTheDay)
            .background(colorOfTheDay)
            .frame(width: 52, height: 68, alignment: .center)
            .cornerRadius(24)
            .opacity(opacityOfTheDay)

            if thereIsInput {
                RoundedRectangle(cornerRadius: 26)
                    .frame(width: 5, height: 6)
                    .padding(.top, 42)
                    .colorMultiply(.blue)
            }
        }
    }

    func arrangeOfTheDay(_ lastDay: Int) -> ArrangeDaysComponent {
        if day < 1 || day > lastDay {
            return .dayFromAnotherMonth
        } else {
            return .normalDay
        }
    }

    // essa função precisa ser reestruturada quando o banco de dados for integrado, ela deve pegar
    // a data da ultima menstruação e calcular a partir dela a proxima e salvar,
    // e com isso, pegar esse ultimo dado para calcular a proximo e assim por diante
    func verifyTheTypeOfTheDay(_: Int, _ month: Int, _: Int, _ lastDayInTheMonth: Int) -> TypeOfTheDays {
        // dados mocados que devem ser substituidos por dados do banco
        var (dayStart, monthStart, yearStart) = (0, 0, 0)
        if month - 1 == 3 {
            (dayStart, monthStart, yearStart) = CycleCalculation().calculateTheDayOfTheNextCycle(14, 3, 2024, [28, 28, 25, 21, 28])
        } else {
            dayStart = -30
        }
        let durationOfThePeriod = 5

        if day >= dayStart && day <= dayStart + durationOfThePeriod {
            return .periodDays
        } else if day < 1 || day > lastDayInTheMonth {
            return .anotherMonth
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

    func defineTheColorOfTheDay(_ type: TypeOfTheDays) -> Color {
        if type == .normalDay {
            return .white
        } else if type == .anotherMonth {
            return .white
        } else if type == .fertileDays {
            return CustomColors.calendarSubtitlePeriod.color
        } else if type == .periodDays {
            return CustomColors.calendarSubtitlePeriod.color
        } else {
            return .white
        }
    }

    func defineOpacity(_ type: TypeOfTheDays) -> Double {
        switch type {
        case .normalDay:
            return 1.0
        case .anotherMonth:
            return 0.3
        case .periodDays:
            return 1.0
        case .fertileDays:
            return 1.0
        }
    }

    func defineDayToUse(_ day: Int, _ month: Int, _ year: Int, _ lastDay: Int, _ arrange: ArrangeDaysComponent) -> Int {
        switch arrange {
        case .normalDay:
            return day
        case .dayFromAnotherMonth:
            return getTheDayFromAnotherMonth(day, month, year, lastDay)
        }
    }
}

// #Preview {
//    DaysComponent(day: 1, month: 1, year: 2024)
// }
