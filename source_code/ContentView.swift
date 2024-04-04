//
//  ContentView.swift
//  teste
//
//  Created by Caio Melloni dos Santos on 25/03/24.
//

import BackendLib
import SwiftData
import SwiftUI
import Assets

struct ContentView: View {
//    @State var cycleService: CycleService
//    @Environment(\.modelContext) private var modelContext

//    init(context: ModelContext) {
//        let cycleService = CycleService(context: context)
//        _cycleService = State(initialValue: cycleService)
//    }

    @State var date: Date = .init()

    var body: some View {
        NavigationView {
            List {
                NavigationLink(destination: CalendarView(date: $date)) {
                    Label("Calendar", systemImage: "calendar")
                }
            }.listStyle(.sidebar)
        }
        //let cycle = cycleService.createCycle(startDate: Date(), endDate: Date())
        //SelectedFrame(cycle: cycle, cycleService: cycleService, selectionType: .symptons, date: Date())
    }
}

// #Preview {
//    ContentView()
// }
