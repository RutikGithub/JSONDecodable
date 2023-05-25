//
//  ApiResponse.swift
//  JSONTask
//
//  Created by Mac on 23/05/23.
//

import Foundation
struct ApiResponse: Codable {
    let id: String
    let batters: Batters?
    let topping: [Topping]
    let type, name: String
    let ppu: Double
}
struct Batters: Codable {
    let batter: [BattersData]
}
struct BattersData: Codable
{
    let id,type: String
}
struct Topping: Codable {
    let id, type: String
}
