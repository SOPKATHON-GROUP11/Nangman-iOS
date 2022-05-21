//
//  NetworkResult.swift
//  Winner-iOS-11
//
//  Created by madilyn on 2022/05/21.
//

import Foundation

enum NetworkResult<T> {
    case success(T)
    case requestErr(T)
    case pathErr
    case serverErr
    case networkFail
}
