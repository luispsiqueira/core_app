//
//  OthersLineDaysComponent.swift
//  core_app
//
//  Created by Luis Silva on 26/03/24.
//

import SwiftUI

struct OthersLineDaysComponent: View {
    var day: Int
    var month: Int
    var year: Int

    var body: some View {
        HStack(spacing: 31) {
            DaysComponent(day: day + WeekDaysNumber.sunday.rawValue, month: month, year: year)
            DaysComponent(day: day + WeekDaysNumber.monday.rawValue, month: month, year: year)
            DaysComponent(day: day + WeekDaysNumber.tuesday.rawValue, month: month, year: year)
            DaysComponent(day: day + WeekDaysNumber.wednesday.rawValue, month: month, year: year)
            DaysComponent(day: day + WeekDaysNumber.thuesday.rawValue, month: month, year: year)
            DaysComponent(day: day + WeekDaysNumber.friday.rawValue, month: month, year: year)
            DaysComponent(day: day + WeekDaysNumber.saturday.rawValue, month: month, year: year)
        }
    }
}

#Preview {
    OthersLineDaysComponent(day: 1, month: 1, year: 2024)
}
