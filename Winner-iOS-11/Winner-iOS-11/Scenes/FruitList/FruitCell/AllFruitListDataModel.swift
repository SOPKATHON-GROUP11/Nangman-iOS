//
//  FruitDataModel.swift
//  Winner-iOS-11
//
//  Created by 최영린 on 2022/05/22.
//

import UIKit
struct AllFruitListDataModel: Codable{
    let fruitID, userNickname: String
    let userProfileImageURL: String
    let type: Int
    let contents: String
    let wateringCount: Int
    let createdAt, updatedAt: String

    enum CodingKeys: String, CodingKey {
        case fruitID = "fruitId"
        case userNickname
        case userProfileImageURL = "userProfileImageUrl"
        case type, contents, wateringCount, createdAt, updatedAt
    }
}


