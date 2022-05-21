//
//  FruitListService.swift
//  Winner-iOS-11
//
//  Created by 최영린 on 2022/05/22.
//

import Foundation
import Alamofire

//let headers: HTTPHeaders = [
//    "Content-Type": "application/json"
//]

struct FruitListService {
    static let shared = FruitListService()
    
    func requestGetAllFruitURL(completion: @escaping (NetworkResult<Any>) -> (Void)) {
        let url = APIConstants.getAllFruitURL
        let request = AF.request(url, method: .get, encoding: JSONEncoding.default, headers: headers)
        
        request.responseData { dataResponse in
            switch dataResponse.result {
            case .success:
                guard let statusCode = dataResponse.response?.statusCode else { return }
                guard let value = dataResponse.value else { return }
                let networkResult = self.judgeGetAllFruitURL(by: statusCode, value)
                completion(networkResult)
            case .failure(let error):
                print(error)
                completion(.networkFail)
            }
        }
    }
    
    private func judgeGetAllFruitURL(by statusCode: Int, _ data: Data) -> NetworkResult<Any> {
        print(statusCode)
        switch statusCode {
        case 200: return isVaildGetAllFruitURL(data: data)
        case 400: return .pathErr
        case 500: return .serverErr
        default: return .networkFail
        }
    }
    
    private func isVaildGetAllFruitURL(data: Data) -> NetworkResult<Any> {
        let decoder = JSONDecoder()
        guard let decodedData = try? decoder.decode(GenericResponse<[AllFruitListDataModel]>.self, from: data) else { return .pathErr }
        return .success(decodedData.data ?? "None-Data")
    }
}
