//
//  WeekDaysComponent.swift
//  core_app
//
//  Created by Luis Silva on 25/03/24.
//

import BackendLib
import SwiftUI

struct WeekDaysComponent: View {
    @State var cycleService: CycleService

    var day: Int
    var month: Int
    var year: Int
    var weekDay: WeekDays

    @Binding var dClick: Int
    @Binding var mClick: Int
    @Binding var yClick: Int

    var body: some View {
        VStack(spacing: 20) {
            Text("\(weekDay.rawValue)")
                .colorMultiply(CustomColors.calendarGray.color)
                .font(.system(size: 14))
            DaysComponent(
                cycleService: cycleService,
                day: day,
                month: month,
                year: year,
                dClick: $dClick,
                mClick: $mClick,
                yClick: $yClick
            )
        }
    }
}

// #Preview {
//    WeekDaysComponent()
// }
