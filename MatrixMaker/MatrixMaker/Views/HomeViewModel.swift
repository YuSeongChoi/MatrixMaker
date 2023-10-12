//
//  HomeViewModel.swift
//  MatrixMaker
//
//  Created by YuSeongChoi on 2023/10/11.
//

import SwiftUI

@MainActor
final class HomeViewModel: ObservableObject {
    
    @Published var matrixList: [Matrix] = []
    
    func injectSampleData() {
        self.matrixList.append(
            .init(
                matrixName: "T1",
                top: [.init(name: "Zeus", team: "t1", position: .top, price: 5, image: "")],
                jgl: [.init(name: "Oner", team: "t1", position: .jgl, price: 5, image: "")],
                mid: [.init(name: "Faker", team: "t1", position: .mid, price: 5, image: "")],
                bot: [.init(name: "Gumayusi", team: "t1", position: .bot, price: 5, image: "")],
                spt: [.init(name: "keria", team: "t1", position: .spt, price: 5, image: "")],
                totalPrice: 15
            )
        )
        self.matrixList.append(
            .init(
                matrixName: "GenG",
                top: [.init(name: "Doran", team: "gen", position: .top, price: 5, image: "")],
                jgl: [.init(name: "Peanut", team: "gen", position: .jgl, price: 5, image: "")],
                mid: [.init(name: "Chovy", team: "gen", position: .mid, price: 5, image: "")],
                bot: [.init(name: "Peyz", team: "gen", position: .bot, price: 5, image: "")],
                spt: [.init(name: "Delight", team: "gen", position: .spt, price: 5, image: "")],
                totalPrice: 15
            )
        )
    }
    
}
