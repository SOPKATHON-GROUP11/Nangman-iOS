//
//  APIConstants.swift
//  Winner-iOS-11
//
//  Created by madilyn on 2022/05/21.
//

import Foundation

struct APIConstants {
    // MARK: Base URL
    static let baseURL = "http://3.39.234.8:8000"

    // MARK: Feature URL
    
    /// 전체 게시글 조회
    static let getAllFruitURL = baseURL + "/fruit"
    
    /// 게시글 작성
    static let postFruitURL = baseURL + "/fruit"
    

    /// 특정 게시물 물뿌리기
    static func postWarteringURL(fruitID: String) -> String {
        return baseURL + "/fruit/\(fruitID)/water"
    }

    /// 특정 게시글 상세조회
    static func getTargetFruit(fruitID: String) -> String {
        return baseURL + "/fruit/\(fruitID)"
    }
    
    /// 본인 게시글 전체조회
    static let getMyFruit = baseURL + "/fruit/my"
    
    /// 트리에 달려있는 본인 게시글 전체 조회
    static let getMyTreeFruit = baseURL + "/fruit/my"
    
    /// 트리에 달려있는 게시물이 10개가 넘는지 확인
    static let getMyTreeFruitMaximumCheck = baseURL + "/my/check"
    
    /// 내 나무에 달린 과일들 수확
    static let postMyTreeFruitBasket = baseURL + "/my/basket"
}
