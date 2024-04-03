//
//  FirstLineDaysComponent.swift
//  core_app
//
//  Created by Luis Silva on 26/03/24.
//

import BackendLib
import SwiftUI

struct FirstLineDaysComponent: View {
    @State var cycleService: CycleService

    var day: Int
    var month: Int
    var year: Int

    @Binding var dClick: Int
    @Binding var mClick: Int
    @Binding var yClick: Int

    var body: some View {
        HStack(spacing: 31) {
            WeekDaysComponent(
                cycleService: cycleService,
                day: day + WeekDaysNumber.sunday.rawValue,
                month: month,
                year: year,
                weekDay: .sunday, dClick: $dClick, mClick: $mClick,
                yClick: $yClick
            )
            WeekDaysComponent(
                cycleService: cycleService,
                day: day + WeekDaysNumber.monday.rawValue,
                month: month,
                year: year,
                weekDay: .monday,
                dClick: $dClick,
                mClick: $mClick,
                yClick: $yClick
            )
            WeekDaysComponent(
                cycleService: cycleService,
                day: day + WeekDaysNumber.tuesday.rawValue,
                month: month,
                year: year,
                weekDay: .tuesday,
                dClick: $dClick,
                mClick: $mClick,
                yClick: $yClick
            )
            WeekDaysComponent(
                cycleService: cycleService,
                day: day + WeekDaysNumber.wednesday.rawValue,
                month: month,
                year: year,
                weekDay: .wednesday,
                dClick: $dClick,
                mClick: $mClick,
                yClick: $yClick
            )
            WeekDaysComponent(
                cycleService: cycleService,
                day: day + WeekDaysNumber.thuesday.rawValue,
                month: month,
                year: year,
                weekDay: .thuesday,
                dClick: $dClick,
                mClick: $mClick,
                yClick: $yClick
            )
            WeekDaysComponent(
                cycleService: cycleService,
                day: day + WeekDaysNumber.friday.rawValue,
                month: month,
                year: year,
                weekDay: .friday,
                dClick: $dClick,
                mClick: $mClick,
                yClick: $yClick
            )
            WeekDaysComponent(
                cycleService: cycleService,
                day: day + WeekDaysNumber.saturday.rawValue,
                month: month,
                year: year,
                weekDay: .saturday,
                dClick: $dClick,
                mClick: $mClick,
                yClick: $yClick
            )
        }
    }
}

// #Preview {
//    FirstLineDaysComponent(day: 1, month: 1, year: 2024)
// }
