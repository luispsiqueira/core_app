//
//  CalendarView.swift
//  core_app
//
//  Created by Luis Silva on 01/04/24.
//

// import BackendLib
// import SwiftUI
//

import SwiftUI

struct CalendarViewOld2: View {
    @Binding var date: Date
    @Environment(\.modelContext) private var modelContext
    var monthToPass = Calendar.current.component(.month, from: Date())
    var yearToPass = Calendar.current.component(.year, from: Date())

    var body: some View {
        ScrollView {
            HStack {
                VStack(alignment: .leading) {
                    // Greetings
                    Text("Hello, Julia!")
                        .font(.system(.title2))

                    HStack(spacing: 30) {
                        CalendarComponent(month: monthToPass,
                                          year: yearToPass,
                                          date: $date)
                    }
                    .padding(.bottom, 32)

                    // Selected date
                    Text("Thursday, 14 March 2024")
                        .bold()
                        .font(.system(.title))

                    Text("Personal Records")
                        .font(.system(.title2))

                    CycleMomentComponent(context: modelContext)

                    Spacer()
                }
                .padding()

                Spacer()
            }
        }
    }
}