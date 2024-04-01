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

    let columns = [GridItem(.flexible())]
    var popOverText = "Thursday, 14 March 2024"

    private func deleteElement(_ index: Int) {
        let elementOnSelection = listElements[index]
        let indexOfElement = selection.firstIndex(of: elementOnSelection) ?? 0
        selection.remove(at: indexOfElement)
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
                        var receivedElement = element
                        let index = listElements.firstIndex(of: receivedElement) ?? 0
                        let didTapElement = receivedElement.didTap
                        HStack(spacing: 10) {
                            Circle()
                                .size(CGSize(width: 20, height: 20))
                                .foregroundColor(didTapElement ? .pink : .black)

                            Text(element.selectionName)
                                .frame(maxWidth: .infinity, alignment: .leading)
                                .alignmentGuide(.leading) { dimension in
                                    dimension[VerticalAlignment.center]
                                }
                                .foregroundColor(didTapElement ? .pink : .black)

                            Spacer()
                        }
                        .onTapGesture {
                            listElements[index].tap()
                            if didTapElement {
                                deleteElement(index)
                            } else {
                                selection.append(receivedElement)
                            }
                        }
                    }
                    .frame(maxWidth: .infinity, alignment: .leading)
                }
                .padding()
            }
        }
        .padding(.vertical)
        .background(Color.white)
    }
}
