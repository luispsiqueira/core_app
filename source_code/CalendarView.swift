//
//  CalendarView.swift
//  core_app
//
//  Created by Luis Silva on 25/03/24.
//

import Foundation
import SwiftUI

struct CalendarView: View {
    @State var month: Int
    @State var year: Int

    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 30)
                .frame(width: 660, height: 644)
            // .colorMultiply(CustomColors.calendarBackground.color)
            VStack(alignment: .leading, spacing: 40) {
                VStack(spacing: 15) {
                    MonthComponent(month: $month, year: $year)
                    VStack(spacing: 8) {
                        let day = getTheWeekDayFromTheFirstDayOfTheMonth(month, year) ?? 0

                        FirstLineDaysComponent(day: day, month: month, year: year)
                        OthersLineDaysComponent(day: day + 7, month: month, year: year)
                        OthersLineDaysComponent(day: day + 14, month: month, year: year)
                        OthersLineDaysComponent(day: day + 21, month: month, year: year)
                        OthersLineDaysComponent(day: day + 28, month: month, year: year)
                        OthersLineDaysComponent(day: day + 35, month: month, year: year)
                    }
                }

                SubtitleComponent()
            }
        }
    }

    func getTheWeekDayFromTheFirstDayOfTheMonth(_ month: Int, _ year: Int) -> Int? {
        var components = DateComponents()
        components.year = year
        components.month = month
        components.day = 1
        if let date = Calendar.current.date(from: components) {
            let weekday = Calendar.current.component(.weekday, from: date)
            print(weekday)

            var weekdayToTheCalendarStartInTheCorrectDay = 1
            for _ in 1 ..< weekday {
                weekdayToTheCalendarStartInTheCorrectDay -= 1
            }

            return weekdayToTheCalendarStartInTheCorrectDay

            // 1: day = 1
            // 2: day = 0
            // 3: day = -1
            // 4: day = -2
            // 5: day = -3
            // 6: day = -4
            // 7: day = -5
        }
        return 0
    }
}

#Preview {
    CalendarView(month: 1, year: 2024)
}