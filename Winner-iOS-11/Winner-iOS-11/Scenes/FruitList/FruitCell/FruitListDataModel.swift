//
//  FruitDataModel.swift
//  Winner-iOS-11
//
//  Created by 최영린 on 2022/05/22.
//

import UIKit
struct FruitListDataModel {
    let profileImageName: String
    var profileImage: UIImage? {
        return UIImage(named: profileImageName)
    }
    let profileUserName: String
    var fruitImageName: String
    var fruitImage: UIImage? {
            return UIImage(named: fruitImageName)
    }
    var fruitContent: String
    var wateringCount: Int
}


