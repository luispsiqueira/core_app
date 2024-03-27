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

    var body: some View {
        VStack(spacing: 20) {
            Text("\(weekDay.rawValue)")
                .colorMultiply(CustomColors.calendarGray.color)
                .font(.system(size: 14))
            DaysComponent(day: day, month: month, year: year)
        }
    }
}

// #Preview {
//    WeekDaysComponent()
// }
