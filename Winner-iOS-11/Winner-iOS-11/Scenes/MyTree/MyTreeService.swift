//
//  MyTreeService.swift
//  Winner-iOS-11
//
//  Created by madilyn on 2022/05/22.
//

import Foundation
import Alamofire

struct MyTreeService {
    static let shared = MyTreeService()
    
    func requestGetMyTreeFruitMaximumCheck(completion: @escaping (NetworkResult<Any>) -> (Void)) {
        let url = APIConstants.getMyTreeFruit
        let request = AF.request(url, method: .get, encoding: JSONEncoding.default)
        
        request.responseData { dataResponse in
            switch dataResponse.result {
            case .success:
                guard let statusCode = dataResponse.response?.statusCode else { return }
                guard let value = dataResponse.value else { return }
                let networkResult = self.judgeGetMyTreeFruitMaximumCheck(by: statusCode, value)
                completion(networkResult)
            case .failure(let error):
                print(error)
                completion(.networkFail)
            }
        }
    }
    
    private func judgeGetMyTreeFruitMaximumCheck(by statusCode: Int, _ data: Data) -> NetworkResult<Any> {
        switch statusCode {
        case 200: return isVaildGetMyTreeFruitMaximumCheck(data: data)
        case 400: return .pathErr
        case 500: return .serverErr
        default: return .networkFail
        }
    }
    
    private func isVaildGetMyTreeFruitMaximumCheck(data: Data) -> NetworkResult<Any> {
        let decoder = JSONDecoder()
        guard let decodedData = try? decoder.decode(GenericResponse<GetMyTreeFruitMaximumCheckModel>.self, from: data) else { return .pathErr }
        return .success(decodedData.data ?? "None-Data")
    }
}
