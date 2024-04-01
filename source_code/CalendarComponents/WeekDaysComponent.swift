//
//  WeekDaysComponent.swift
//  core_app
//
//  Created by Luis Silva on 25/03/24.
//

import SwiftUI

struct WeekDaysComponent: View {
    var day: Int
    var month: Int
    var year: Int
    var weekDay: WeekDays

    @Binding var dayClick: Int
    @Binding var monthClick: Int
    @Binding var yearClick: Int

    var body: some View {
        VStack(spacing: 20) {
            Text("\(weekDay.rawValue)")
                .colorMultiply(CustomColors.calendarGray.color)
                .font(.system(size: 14))
            DaysComponent(day: day, month: month, year: year, dayClick: $dayClick, monthClick: $monthClick, yearClick: $yearClick)
        }
    }
}

// #Preview {
//    WeekDaysComponent()
// }
