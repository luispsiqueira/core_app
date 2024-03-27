//
//  ContentView.swift
//  teste
//
//  Created by Caio Melloni dos Santos on 25/03/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            CalendarView(month: 3, year: 2024)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
