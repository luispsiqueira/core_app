//
//  Mocks.swift
//  core_app
//
//  Created by Clissia Bozzer Bovi on 01/04/24.
//

import Foundation

enum Mocks {
    enum Symptons {
        static var titleText: String = "Seus sintomas de hoje"

        static var buttonTitle: String = "Adicionar sintoma"

        static var list: [SelectionElement] = [SelectionElement(selectionName: "Seios sensíveis"),
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

    enum Mood {
        static var titleText: String = "Seu humor de hoje"

        static var buttonTitle: String = "Adicionar humor"

        static var list: [SelectionElement] = [SelectionElement(selectionName: "Humor"),
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
}
