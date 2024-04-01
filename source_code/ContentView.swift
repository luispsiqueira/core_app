//
//  ContentView.swift
//  teste
//
//  Created by Caio Melloni dos Santos on 25/03/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        SelectedFrame(listElements: Mocks.Symptons.list,
                      buttonText: Mocks.Symptons.buttonTitle,
                      titleText: Mocks.Symptons.titleText)

        SelectedFrame(listElements: Mocks.Mood.list,
                      buttonText: Mocks.Mood.buttonTitle,
                      titleText: Mocks.Mood.titleText)
    }
}

#Preview {
    ContentView()
}
