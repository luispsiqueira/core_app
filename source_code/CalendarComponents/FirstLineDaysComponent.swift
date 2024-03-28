//
//  FirstLineDaysComponent.swift
//  core_app
//
//  Created by Luis Silva on 26/03/24.
//

import SwiftUI

struct FirstLineDaysComponent: View {
    var day: Int
    var month: Int
    var year: Int

    var body: some View {
        HStack(spacing: 31) {
            WeekDaysComponent(day: day + WeekDaysNumber.sunday.rawValue, month: month, year: year, weekDay: .sunday)
            WeekDaysComponent(day: day + WeekDaysNumber.monday.rawValue, month: month, year: year, weekDay: .monday)
            WeekDaysComponent(day: day + WeekDaysNumber.tuesday.rawValue, month: month, year: year, weekDay: .tuesday)
            WeekDaysComponent(day: day + WeekDaysNumber.wednesday.rawValue, month: month, year: year, weekDay: .wednesday)
            WeekDaysComponent(day: day + WeekDaysNumber.thuesday.rawValue, month: month, year: year, weekDay: .thuesday)
            WeekDaysComponent(day: day + WeekDaysNumber.friday.rawValue, month: month, year: year, weekDay: .friday)
            WeekDaysComponent(day: day + WeekDaysNumber.saturday.rawValue, month: month, year: year, weekDay: .saturday)
        }
    }
}

#Preview {
    FirstLineDaysComponent(day: 1, month: 1, year: 2024)
}
