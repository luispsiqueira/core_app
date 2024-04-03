//
//  SelectionPopUp.swift
//  core_app
//
//  Created by Clissia Bozzer Bovi on 25/03/24.
//

import SwiftUI

struct SelectionPopUp: View {
    @Environment(\.dismiss) var dismiss
    @Binding var selection: [SelectionElement]
    @Binding var listElements: [SelectionElement]
    @State var selectedElements: [SelectionElement] = []
    @State var removedElements: [SelectionElement] = []

    let columns = [GridItem(.flexible())]
    var popOverText = "Thursday, 14 March 2024"

    private func deleteElement(_ index: Int) {
        let elementOnSelection = listElements[index]
        let indexOfElement = selectedElements.firstIndex(of: elementOnSelection) ?? 0
        selectedElements.remove(at: indexOfElement)
    }

    var body: some View {
        VStack(alignment: .leading) {
            Text(popOverText)
                .font(.title3)
                .padding(.horizontal)
                .foregroundColor(.black)

            Divider()

            ScrollView {
                LazyVGrid(columns: columns, spacing: 36) {
                    ForEach(listElements, id: \.self) { element in
                        let receivedElement = element
                        let index = listElements.firstIndex(of: receivedElement) ?? 0
                        let didTapElement = receivedElement.didTap
                        HStack(spacing: 10) {
                            Circle()
                                .size(CGSize(width: 20, height: 20))
                                .foregroundColor(didTapElement ? Color(ColorName.ButtonBackground) : .black)

                            Text(element.selectionName)
                                .frame(maxWidth: .infinity, alignment: .leading)
                                .alignmentGuide(.leading) { dimension in
                                    dimension[VerticalAlignment.center]
                                }
                                .foregroundColor(didTapElement ? Color(ColorName.ButtonBackground) : .black)

                            Spacer()
                        }
                        .onTapGesture {
                            listElements[index].tap()
                            if didTapElement {
                                deleteElement(index)
                            } else {
                                selectedElements.append(receivedElement)
                            }
                        }
                    }
                    .frame(maxWidth: .infinity, alignment: .leading)
                }
                .padding()
            }
            Divider()
            Button {
                dismiss()
                selection = selectedElements
            } label: {
                Text("Concluído")
            }
            .buttonStyle(.borderedProminent)
            .tint(Color(ColorName.ButtonBackground))
            .frame(width: 80, height: 28)
            .padding(.leading, 16)
        }
        .padding(.vertical)
        .background(Color.white)
    }
}
