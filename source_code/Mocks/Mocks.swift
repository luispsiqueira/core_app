//
//  Mocks.swift
//  core_app
//
//  Created by Clissia Bozzer Bovi on 01/04/24.
//

import Foundation

enum Mocks {
    static func generateSymptonsList() -> [SelectionElement] {
        return [SelectionElement(selectionName: "Seios sensíveis"),
                SelectionElement(selectionName: "Cólica"),
                SelectionElement(selectionName: "Dor de cabeça"),
                SelectionElement(selectionName: "Febre"),
                SelectionElement(selectionName: "Dor nas costas"),
                SelectionElement(selectionName: "Acne"),
                SelectionElement(selectionName: "Fadiga"),
                SelectionElement(selectionName: "Cansaço"),
                SelectionElement(selectionName: "Apetite descontrolado"),
                SelectionElement(selectionName: "Falta de apetite")]
    }
}
