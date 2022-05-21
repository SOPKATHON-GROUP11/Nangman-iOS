//
//  GetMyTreeFruitModel.swift
//  Winner-iOS-11
//
//  Created by madilyn on 2022/05/22.
//

import Foundation

struct GetMyTreeFruitModel: Codable {
    var fruitID: String
    var type: Int
    var contents: String
    var wateringCount: Int
    var onTree: Bool
    var createdAt: String
    var updatedAt: String

    enum CodingKeys: String, CodingKey {
        case fruitID = "fruitId"
        case type = "type"
        case contents = "contents"
        case wateringCount = "wateringCount"
        case onTree = "onTree"
        case createdAt = "createdAt"
        case updatedAt = "updatedAt"
    }
}
