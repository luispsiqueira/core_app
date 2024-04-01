//
//  CalendarView.swift
//  core_app
//
//  Created by Luis Silva on 01/04/24.
//

import SwiftUI

struct CalendarView: View {
    var userName: String = "Julia"
    @Binding var dayClick: Int
    @Binding var monthClick: Int
    @Binding var yearClick: Int

    var monthToPass = Calendar.current.component(.month, from: Date())
    var yearToPass = Calendar.current.component(.year, from: Date())

    var body: some View {
//        NavigationView {
        ScrollView {
            VStack(alignment: .leading) {
                Text("Hello, \(userName)")
                    .font(.largeTitle)

                CalendarComponent(month: monthToPass, year: yearToPass, dayClick: $dayClick, monthClick: $monthClick, yearClick: $yearClick)
            }
        }
//        }
        .navigationTitle("Calendar")
        .onChange(of: dayClick) { _ in
            // mudar a visao de baixo para o dia correto
        }
    }
}

// #Preview {
//    CalendarView()
// }
