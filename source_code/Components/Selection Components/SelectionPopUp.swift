//
//  SelectionPopUp.swift
//  core_app
//
//  Created by Clissia Bozzer Bovi on 25/03/24.
//

import SwiftUI

struct SelectionPopUp: View {
    @Environment(\.dismiss) var dismiss
    @Binding var selection: [String]

    let columns = [GridItem(.flexible())]
    var listElements: [String] = ["", ""]
    var popOverText = "Thursday, 14 March 2024"

    var body: some View {
        VStack(alignment: .leading) {
            Text(popOverText)
                .font(.title3)
                .padding(.horizontal)
                .foregroundColor(.black)

            Divider()

            ScrollView {
                LazyVGrid(columns: columns) {
                    ForEach(listElements ?? [], id: \.self) { element in
                        ZStack {
                            Text(element)
                                .padding(5)
                                .onTapGesture {
                                    selection.append(element)
                                    print(selection)
                                    dismiss()
                                }
                        }
                    }
                }.padding()
            }
        }
        .padding(.vertical)
        .background(Color.white)
    }
}
