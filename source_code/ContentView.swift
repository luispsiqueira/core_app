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
    @Environment(\.modelContext) private var modelContext

    @State var date: Date = .init()

    var body: some View {
        NavigationView {
            List {
                NavigationLink(destination: CalendarView(date: $date)) {
                    Label("Calendar", systemImage: "calendar")
                }
                NavigationLink(destination: CycleMomentComponent(context: modelContext)) {
                    Label("Teste", systemImage: "")
                }
            }.listStyle(.sidebar)
        }
    }
}
