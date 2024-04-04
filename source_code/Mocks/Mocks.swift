//
//  Mocks.swift
//  core_app
//
//  Created by Clissia Bozzer Bovi on 01/04/24.
//

import Foundation

enum SelectionType {
    case symptons
    case mood
}

protocol SelectionData {
    var titleText: String { get set }
    var buttonTitle: String { get set }
    var list: [SelectionElement] { get set }
}

enum Mocks {
    struct Symptons: SelectionData {
        var titleText: String = "Seus sintomas de hoje"

        var buttonTitle: String = "Adicionar sintoma"

        var list: [SelectionElement] = [SelectionElement(selectionName: "Seios sensíveis"),
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

    struct Mood: SelectionData {
        var titleText: String = "Seu humor de hoje"

        var buttonTitle: String = "Adicionar humor"

        var list: [SelectionElement] = [SelectionElement(selectionName: "Humor"),
                                        SelectionElement(selectionName: "Calmo"),
                                        SelectionElement(selectionName: "Feliz"),
                                        SelectionElement(selectionName: "Enérgico"),
                                        SelectionElement(selectionName: "Alegre"),
                                        SelectionElement(selectionName: "Sonolento"),
                                        SelectionElement(selectionName: "Irritado"),
                                        SelectionElement(selectionName: "Ansioso"),
                                        SelectionElement(selectionName: "Triste"),
                                        SelectionElement(selectionName: "Desanimado"),
                                        SelectionElement(selectionName: "Pensamentos obsessivos"),
                                        SelectionElement(selectionName: "Pouca energia"),
                                        SelectionElement(selectionName: "Apático"),
                                        SelectionElement(selectionName: "Confuso"),
                                        SelectionElement(selectionName: "Muito autocrítica"),
                                        SelectionElement(selectionName: "Emocionada")]
    }

    static func getData(type: SelectionType) -> SelectionData {
        switch type {
        case .symptons:
            return Symptons()
        case .mood:
            return Mood()
        }
    }
}
