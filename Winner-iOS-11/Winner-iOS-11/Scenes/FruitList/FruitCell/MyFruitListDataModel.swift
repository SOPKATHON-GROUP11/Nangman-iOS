//
//  MyFruitListDataModel.swift
//  Winner-iOS-11
//
//  Created by 최영린 on 2022/05/22.
//

import Foundation

struct MyFruitListDataModel: Codable{
    let fruitID: String
    let type: Int
    let contents: String
    let wateringCount: Int
    let createdAt, updatedAt: String

    enum CodingKeys: String, CodingKey {
        case fruitID = "fruitId"
        case type, contents, wateringCount, createdAt, updatedAt
    }
}
