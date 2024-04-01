//
//  SelectedFrame.swift
//  core_app
//
//  Created by Clissia Bozzer Bovi on 25/03/24.
//

import SwiftUI

struct SelectedFrame: View {
    @State private var isPopoverPresented: Bool = false
    @State private var selectedElements: [SelectionElement] = []
    @State var listElements: [SelectionElement] = Mocks.generateSymptonsList()

    var buttonText = "Adicionar sintoma"
    var titleText = "Seus sintomas de hoje"

    private func generateDidTap() -> [Bool] {
        var list: [Bool] = []
        for _ in listElements {
            list.append(false)
        }
        return list
    }

    var body: some View {
        VStack {
            Text(titleText)
                .foregroundStyle(.white)
                .padding(.top, 16)

            ScrollView([.horizontal], showsIndicators: false) {
                HStack(spacing: 12) {
                    if selectedElements.count == 0 {
                        Image("asset1")
                            .resizable()
                            .frame(width: 60, height: 60)
                            .clipShape(Circle())
                            .shadow(radius: 60)
                    } else {
                        ForEach(selectedElements, id: \.self) { _ in
                            Image("asset2")
                                .resizable()
                                .frame(width: 60, height: 60)
                                .clipShape(Circle())
                                .shadow(radius: 60)
                        }
                    }
                }
            }
            .padding(.top, 16)
            .padding(.leading)
            .frame(height: 50)

            Divider()
                .padding(.top, 20)
                .padding(.bottom, -10)
                .foregroundColor(.white)

            Button(action: {
                self.isPopoverPresented = true
                print(selectedElements.count)
            }, label: {
                Text(buttonText)
            })
            .popover(isPresented: $isPopoverPresented, arrowEdge: .trailing) {
                SelectionPopUp(selection: $selectedElements, listElements: $listElements)
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
