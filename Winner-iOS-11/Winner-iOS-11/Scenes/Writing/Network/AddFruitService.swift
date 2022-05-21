//
//  AddFruitService.swift
//  Winner-iOS-11
//
//  Created by User on 2022/05/22.
//

import Foundation
import Alamofire

enum FruitType: Int {
    case apple = 1
    case persimmon
}


struct AddFruitService {
    static let shared = AddFruitService()
    
    private init() {}
    
    func addFruit(fruitType: FruitType, contents: String, completion: @escaping(NetworkResult<Any>) -> Void) {
        let url = APIConstants.postFruitURL
        print(url)
        let header: HTTPHeaders = ["Content-Type" : "application/json"]
        let body: Parameters = [
            "type": fruitType.rawValue,
            "contents": contents
        ]
        
        // Request 생성
        let dataRequest = AF.request(url, method: .post, parameters: body, encoding: JSONEncoding.default, headers: header)
        
        // Request 시작
        dataRequest.responseData { response in
            switch response.result {
            // 성공 시 상태코드와 데이터(value) 수신
            case .success:
                guard let statusCode = response.response?.statusCode else { return }
                guard let value = response.value else { return }
                
                let networkResult = parseJSON(by: statusCode, data: value, type: AddFruitResponse.self)
                completion(networkResult)
                
            // 실패 시 networkFail(통신 실패)신호 전달
            case .failure:
                completion(.networkFail)
            }
        }
    }
    
    // 상태 코드와 데이터, decoding type을 가지고 통신의 결과를 핸들링하는 함수
    func parseJSON<T: Codable> (by statusCode: Int, data: Data, type: T.Type) -> NetworkResult<Any> {
        let decoder = JSONDecoder()

        guard let decodedData = try? decoder.decode(type.self, from: data) else { return .pathErr }
        
        switch statusCode {
        case 200..<300: return .success(decodedData)
        case 400...500: return .requestErr(decodedData)
        case 500..<600: return .serverErr
        default: return .networkFail
        }
    }
    
}
