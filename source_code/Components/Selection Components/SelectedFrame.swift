//
//  SelectedFrame.swift
//  core_app
//
//  Created by Clissia Bozzer Bovi on 25/03/24.
//

import SwiftUI

struct SelectedFrame: View {
    var buttonText = "Adicionar sintoma"
    var titleText = "Seus sintomas de hoje"

    var body: some View {
        VStack {
            Text(titleText)
                .foregroundStyle(.white)
            ScrollView([.horizontal], showsIndicators: true) {
                HStack(spacing: 12) {
                    ForEach(0 ..< 10) { _ in
                        Circle()
                            .frame(width: 60, height: 60)
                    }
                }
            }

            Button(buttonText) {
                print("aa")
            }
            .buttonStyle(.plain)
            .frame(width: 380, height: 40)
        }
        .frame(width: 380, height: 152)
        .contentShape(Rectangle())
        .background(Color.black.opacity(0.6))
        .cornerRadius(15)
    }
}

#Preview {
    SelectedFrame()
}
