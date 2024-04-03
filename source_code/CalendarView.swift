//
//  CalendarView.swift
//  core_app
//
//  Created by Luis Silva on 01/04/24.
//

import BackendLib
import SwiftUI

struct CalendarView: View {
    @State var cycleService: CycleService

    var userName: String = "Julia"
    @Binding var dClick: Int
    @Binding var mClick: Int
    @Binding var yClick: Int

    var monthToPass = Calendar.current.component(.month, from: Date())
    var yearToPass = Calendar.current.component(.year, from: Date())

    var body: some View {
//        NavigationView {
        ScrollView {
            VStack(alignment: .leading) {
                Text("Hello, \(userName)")
                    .font(.largeTitle)

                CalendarComponent(cycleService: cycleService,
                                  month: monthToPass,
                                  year: yearToPass,
                                  dClick: $dClick,
                                  mClick: $mClick,
                                  yClick: $yClick)
            }
        }
//        }
        .navigationTitle("Calendar")
        .onChange(of: dClick) {
            // mudar a visao de baixo para o dia correto
            print("O dia clicado foi \(dClick)/\(mClick)/\(yClick)")
        }
    }
}

// #Preview {
//    CalendarView()
// }
