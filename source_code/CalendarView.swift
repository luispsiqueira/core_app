//
//  CalendarView.swift
//  core_app
//
//  Created by Luis Silva on 01/04/24.
//

// import BackendLib
// import SwiftUI
//
// struct CalendarView: View {
//    var userName: String = "Julia"
//    @Binding var date: Date
//
//    var monthToPass = Calendar.current.component(.month, from: Date())
//    var yearToPass = Calendar.current.component(.year, from: Date())
//
//    var body: some View {
////        NavigationView {
//        ScrollView {
//            VStack(alignment: .leading) {
//                Text("Hello, \(userName)")
//                    .font(.largeTitle)
//
//                CalendarComponent(month: monthToPass,
//                                  year: yearToPass,
//                                  date: $date)
//
//                CycleMomentComponent(phase: .period)
//            }
//        }
////        }
//        .navigationTitle("Calendar")
//        .onChange(of: date) {
//            // mudar a visao de baixo para o dia correto
//            print("O dia clicado foi \($date.wrappedValue)")
//        }
//    }
// }

import SwiftUI

struct CalendarView: View {
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
                        // Calendar
//                        RoundedRectangle(cornerRadius: 10)
//                            .frame(width: 460, height: 370)
                        CalendarComponent(month: monthToPass,
                                          year: yearToPass,
                                          date: $date)

//                        CycleMomentComponent(phase: .period)

//                        VStack(alignment: .leading) {
//                            // Begin cycle
//                            RoundedRectangle(cornerRadius: 10)
//                                .frame(width: 142, height: 78)
//
//                            // Current cycle phase
//                            RoundedRectangle(cornerRadius: 10)
//                                .frame(width: 317, height: 281)
//                        }
                    }
                    .padding(.bottom, 32)

                    // Selected date
                    Text("Thursday, 14 March 2024")
                        .bold()
                        .font(.system(.title))

                    Text("Personal Records")
                        .font(.system(.title2))

                    CycleMomentComponent(context: modelContext)
//                    HStack {
//                        // Calendar
//                        RoundedRectangle(cornerRadius: 10)
//                            .frame(width: 460, height: 370)
//
//                        VStack(alignment: .leading) {
//                            // Begin cycle
//                            RoundedRectangle(cornerRadius: 10)
//                                .frame(width: 142, height: 78)
//
//                            // Current cycle phase
//                            RoundedRectangle(cornerRadius: 10)
//                                .frame(width: 317, height: 281)
//                        }
//                    }

                    Spacer()
                }
                .padding()

                Spacer()
            }
        }
    }
}
