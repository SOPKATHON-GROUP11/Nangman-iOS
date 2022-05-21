//
//  MyTreeVC.swift
//  Winner-iOS-11
//
//  Created by madilyn on 2022/05/21.
//

import UIKit

class MyTreeVC: UIViewController {
    
    @IBOutlet weak var miningButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        requestGetMyTreeFruitMaximumCheck()
        
    }
    
    @IBAction func didTapWriteButton(_ sender: Any) {
        guard let floatingButtonVC = self.storyboard?.instantiateViewController(withIdentifier: FloatingButtonVC.className) as? FloatingButtonVC else { return }
        floatingButtonVC.modalPresentationStyle = .overCurrentContext
        floatingButtonVC.modalTransitionStyle = .crossDissolve
        self.present(floatingButtonVC, animated: true)
    }

    @IBAction func didTapMiningButton(_ sender: Any) {
        
    }
}

extension MyTreeVC {
    private func fetchData() {
        
    }
    
    private func requestGetMyTreeFruitMaximumCheck() {
        MyTreeService.shared.requestGetMyTreeFruitMaximumCheck() { networkResult in
            switch networkResult {
            case .success(let res):
                guard let response = res as? GetMyTreeFruitMaximumCheckModel else { return }
                print(response)
            default:
                print("데이터 불러오기 실패")
            }
        }
    }
}
