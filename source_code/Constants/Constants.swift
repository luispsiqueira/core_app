//
//  Constants.swift
//  core_app
//
//  Created by Luis Silva on 25/03/24.
//

import Foundation
import SwiftUI

enum CustomColors {
    case calendarPrimary
    case calendarGray
    case calendarBackground
    case calendarFertileDays
    case calendarSubtitlePeriod
    case calendarSubtitleFertileDays
}

extension CustomColors {
    var color: Color {
        switch self {
        case .calendarPrimary:
            return Color(red: 0.73, green: 0.63, blue: 0.87).opacity(0.8)

        case .calendarGray:
            return Color(red: 0.51, green: 0.51, blue: 0.51)

        case .calendarBackground:
            return Color(red: 0.733, green: 0.635, blue: 0.875)

        case .calendarFertileDays:
            return Color(red: 0.804, green: 0.741, blue: 0.910)

        case .calendarSubtitlePeriod:
            return Color(red: 1, green: 0, blue: 0).opacity(0.6)

        case .calendarSubtitleFertileDays:
            return Color(red: 0.733, green: 0.635, blue: 0.875)
        }
    }
}

enum Spacing: Int {
    case betweenDaysInCalendar = 31
}

enum WeekDaysNumber: Int {
    case sunday = 0
    case monday = 1
    case tuesday = 2
    case wednesday = 3
    case thuesday = 4
    case friday = 5
    case saturday = 6
}

enum WeekDays: String {
    case sunday = "Sun"
    case monday = "Mon"
    case tuesday = "Tue"
    case wednesday = "Wed"
    case thuesday = "Thu"
    case friday = "Fri"
    case saturday = "Sat"
}

enum MonthNumber: Int {
    case january = 1
    case february = 2
    case march = 3
    case april = 4
    case may = 5
    case nume = 6
    case july = 7
    case august = 8
    case september = 9
    case october = 10
    case november = 11
    case december = 12
}

enum MonthName: String {
    case january = "January"
    case february = "February"
    case march = "March"
    case april = "April"
    case may = "May"
    case june = "June"
    case july = "July"
    case august = "August"
    case september = "September"
    case october = "October"
    case november = "November"
    case december = "December"
}
