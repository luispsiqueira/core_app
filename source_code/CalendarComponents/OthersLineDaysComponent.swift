//
//  OthersLineDaysComponent.swift
//  core_app
//
//  Created by Luis Silva on 26/03/24.
//

import BackendLib
import SwiftUI

struct OthersLineDaysComponent: View {
    @State var cycleService: CycleService

    var day: Int
    var month: Int
    var year: Int
//    @Environment(\.modelContext) private var modelContext

    @Binding var date: Date

    var body: some View {
        HStack(spacing: 31) {
            DaysComponent(cycleService: cycleService,
                          day: day + WeekDaysNumber.sunday.rawValue,
                          month: month,
                          year: year,
                          date: $date)
            DaysComponent(cycleService: cycleService,
                          day: day + WeekDaysNumber.monday.rawValue,
                          month: month,
                          year: year,
                          date: $date)
            DaysComponent(cycleService: cycleService,
                          day: day + WeekDaysNumber.tuesday.rawValue,
                          month: month,
                          year: year,
                          date: $date)
            DaysComponent(cycleService: cycleService,
                          day: day + WeekDaysNumber.wednesday.rawValue,
                          month: month,
                          year: year,
                          date: $date)
            DaysComponent(cycleService: cycleService,
                          day: day + WeekDaysNumber.thuesday.rawValue,
                          month: month,
                          year: year,
                          date: $date)
            DaysComponent(cycleService: cycleService,
                          day: day + WeekDaysNumber.friday.rawValue,
                          month: month,
                          year: year,
                          date: $date)
            DaysComponent(cycleService: cycleService,
                          day: day + WeekDaysNumber.saturday.rawValue,
                          month: month,
                          year: year,
                          date: $date)
        }
    }
}

// #Preview {
//    OthersLineDaysComponent(day: 1, month: 1, year: 2024)
// }
