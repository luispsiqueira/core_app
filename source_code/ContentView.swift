//
//  ContentView.swift
//  teste
//
//  Created by Caio Melloni dos Santos on 25/03/24.
//

import BackendLib
import SwiftData
import SwiftUI

struct ContentView: View {
    @State var cycleService: CycleService
    // @Environment(\.modelContext) private var modelContext

    init(context: ModelContext) {
        let cycleService = CycleService(context: context)
        _cycleService = State(initialValue: cycleService)
    }

    @State var dayClick: Int = Calendar.current.component(.day, from: Date())
    @State var mClick: Int = Calendar.current.component(.month, from: Date())
    @State var yClick: Int = Calendar.current.component(.year, from: Date())

    var body: some View {
        NavigationView {
            List {
                NavigationLink(destination: CalendarView(cycleService: cycleService,
                                                         dClick: $dayClick,
                                                         mClick: $mClick,
                                                         yClick: $yClick))
                {
                    Label("Calendar", systemImage: "calendar")
                }
            }.listStyle(.sidebar)
                .navigationTitle("Sidebar")
                .onAppear {}
        }
    }
}

// #Preview {
//    ContentView()
// }
