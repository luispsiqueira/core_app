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

    @State var date: Date = .init()

    var body: some View {
        let cycle = cycleService.createCycle()
        SelectedFrame(cycle: cycle, selectionType: .symptons, date: Date())
        SelectedFrame(cycle: cycle, selectionType: .mood, date: Date())
    }
}

// #Preview {
//    ContentView()
// }
