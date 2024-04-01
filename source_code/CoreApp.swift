//
//  CoreApp.swift
//  teste
//
//  Created by Caio Melloni dos Santos on 25/03/24.
//

import SwiftUI

@main
struct CoreApp: App {
    var dayToPass = Calendar.current.component(.day, from: Date())
    var monthToPass = Calendar.current.component(.month, from: Date())
    var yearToPass = Calendar.current.component(.year, from: Date())

    var body: some Scene {
        WindowGroup {
//            CalendarView(dayClick: $dayClick, monthClick: $monthClick, yearClick: $yearClick)
            ContentView()
        }
    }
}
