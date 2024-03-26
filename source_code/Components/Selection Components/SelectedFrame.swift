//
//  SelectedFrame.swift
//  core_app
//
//  Created by Clissia Bozzer Bovi on 25/03/24.
//

import SwiftUI

struct SelectedFrame: View {
    @State private var isPopoverPresented: Bool = false
    @State private var selectedSymptons: [String] = []

    var buttonText = "Adicionar sintoma"
    var titleText = "Seus sintomas de hoje"
    var listElements: [String] = ["Seios sensíveis",
                                  "Cólica",
                                  "Dor de cabeça",
                                  "Febre",
                                  "Dor nas costas",
                                  "Acne",
                                  "Fadiga",
                                  "Cansaço",
                                  "Apetite descontrolado",
                                  "Falta de apetite"]

    var body: some View {
        VStack {
            Text(titleText)
                .foregroundStyle(.white)
                .padding(.top, 16)

            ScrollView([.horizontal], showsIndicators: false) {
                HStack(spacing: 12) {
                    ForEach(0 ..< 150) { _ in
                        Circle()
                            .frame(width: 60, height: 60)
                    }
                }
            }
            .padding(.top, 16)
            .padding(.leading)
            .frame(maxHeight: 50)

            Divider()
                .padding(.top, 20)
                .padding(.bottom, -10)
                .foregroundColor(.white)

            Button(action: {
                self.isPopoverPresented = true
            }, label: {
                Text(buttonText)
            })
            .popover(isPresented: $isPopoverPresented, arrowEdge: .trailing) {
                SelectionPopUp(selection: $selectedSymptons, listElements: listElements)
                    .frame(minWidth: 300, maxHeight: 400)
            }
            .buttonStyle(.plain)
            .foregroundColor(.blue)
            .padding(.bottom, 0)
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
