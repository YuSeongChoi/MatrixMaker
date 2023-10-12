//
//  Matrix.swift
//  MatrixMaker
//
//  Created by YuSeongChoi on 2023/10/11.
//

import Foundation

struct Matrix: Codable, Hashable, Identifiable {
    var id: UUID = .init()
    /// 표 이름
    var matrixName: String
    /// 탑 리스트
    var top: [Player]
    /// 정글 리스트
    var jgl: [Player]
    /// 미드 리스트
    var mid: [Player]
    /// 원딜 리스트
    var bot: [Player]
    /// 서포터 리스트
    var spt: [Player]
    /// 표 전체 가격
    var totalPrice: Int
}
