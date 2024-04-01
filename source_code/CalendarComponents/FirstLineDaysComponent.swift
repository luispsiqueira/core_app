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

    @Binding var dayClick: Int
    @Binding var monthClick: Int
    @Binding var yearClick: Int

    var body: some View {
        HStack(spacing: 31) {
            WeekDaysComponent(day: day + WeekDaysNumber.sunday.rawValue, month: month, year: year, weekDay: .sunday, dayClick: $dayClick, monthClick: $monthClick, yearClick: $yearClick)
            WeekDaysComponent(day: day + WeekDaysNumber.monday.rawValue, month: month, year: year, weekDay: .monday, dayClick: $dayClick, monthClick: $monthClick, yearClick: $yearClick)
            WeekDaysComponent(day: day + WeekDaysNumber.tuesday.rawValue, month: month, year: year, weekDay: .tuesday, dayClick: $dayClick, monthClick: $monthClick, yearClick: $yearClick)
            WeekDaysComponent(day: day + WeekDaysNumber.wednesday.rawValue, month: month, year: year, weekDay: .wednesday, dayClick: $dayClick, monthClick: $monthClick, yearClick: $yearClick)
            WeekDaysComponent(day: day + WeekDaysNumber.thuesday.rawValue, month: month, year: year, weekDay: .thuesday, dayClick: $dayClick, monthClick: $monthClick, yearClick: $yearClick)
            WeekDaysComponent(day: day + WeekDaysNumber.friday.rawValue, month: month, year: year, weekDay: .friday, dayClick: $dayClick, monthClick: $monthClick, yearClick: $yearClick)
            WeekDaysComponent(day: day + WeekDaysNumber.saturday.rawValue, month: month, year: year, weekDay: .saturday, dayClick: $dayClick, monthClick: $monthClick, yearClick: $yearClick)
        }
    }
}

// #Preview {
//    FirstLineDaysComponent(day: 1, month: 1, year: 2024)
// }
