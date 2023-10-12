//
//  Player.swift
//  MatrixMaker
//
//  Created by YuSeongChoi on 2023/10/11.
//

import Foundation

struct Player: Codable, Hashable {
    /// 선수 이름
    var name: String
    /// 소속팀
    var team: String
    /// 포지션
    var position: Position
    /// 가격
    var price: Int
    /// 이미지
    var image: String
    
    enum Position: String, Codable {
        case top = "top"
        case jgl = "jgl"
        case mid = "mid"
        case bot = "bot"
        case spt = "spt"
    }
}
