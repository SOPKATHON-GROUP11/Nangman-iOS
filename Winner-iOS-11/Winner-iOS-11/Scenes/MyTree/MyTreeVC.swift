//
//  MyTreeVC.swift
//  Winner-iOS-11
//
//  Created by madilyn on 2022/05/21.
//

import UIKit
var isPosted = true

class MyTreeVC: UIViewController {
    
    @IBOutlet weak var miningButton: UIButton!
    
    @IBOutlet weak var fruit1: UIButton!
    @IBOutlet weak var fruit2: UIButton!
    @IBOutlet weak var fruit3: UIButton!
    @IBOutlet weak var fruit4: UIButton!
    @IBOutlet weak var fruit5: UIButton!
    @IBOutlet weak var fruit6: UIButton!
    @IBOutlet weak var fruit7: UIButton!
    @IBOutlet weak var fruit8: UIButton!
    @IBOutlet weak var fruit9: UIButton!
    @IBOutlet weak var fruit10: UIButton!
    
    @IBOutlet weak var basketImageView: UIButton!
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        DispatchQueue.main.async {
            if isPosted == true {
                self.fruit10.isHidden = false
            } else {
                self.fruit10.isHidden = true
            }
        }

    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        requestGetMyTreeFruitMaximumCheck()
        requestGetMyTreeFruit()
        requestPostMyTreeFruitBasket()
        
        fruit10.isHidden = true
        
    }
    
    @IBAction func didTapWriteButton(_ sender: Any) {
        if isPosted {
            guard let alert = Bundle.main.loadNibNamed(PopUpBtn.className, owner: self, options: nil)?.first as? PopUpBtn else { return }
            alert.leftButton.press {
                self.dismiss(animated: true, completion: nil)
                DispatchQueue.main.async {
                    [self.fruit1, self.fruit2, self.fruit3, self.fruit4, self.fruit5, self.fruit6, self.fruit7, self.fruit8, self.fruit9, self.fruit10].forEach {
                        $0?.isHidden = true
                    }
                    self.basketImageView.setImage(UIImage(named: "Group 33726"), for: .normal)
                }
            }
            alert.showPopUp(vc: self, message:
                                """
                                10개의 과일이 모여
                                수확할 때가 됐어요!
                                """
                                , leftButtonTitle: "바구니에 보관할게요")
        } else {
        guard let floatingButtonVC = self.storyboard?.instantiateViewController(withIdentifier: FloatingButtonVC.className) as? FloatingButtonVC else { return }
        floatingButtonVC.modalPresentationStyle = .overCurrentContext
        floatingButtonVC.modalTransitionStyle = .crossDissolve
            floatingButtonVC.delegate = self
        
        self.present(floatingButtonVC, animated: true)
    }
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
            default:
                print("데이터 불러오기 실패")
            }
        }
    }
    
    private func requestGetMyTreeFruit() {
        MyTreeService.shared.requestGetMyTreeFruit { networkResult in
            switch networkResult {
            case .success(let res):
                guard let response = res as? [GetMyTreeFruitModel] else { return }
                print(response)
            default:
                print("데이터 불러오기 실패")
            }
        }
    }
    
    private func requestPostMyTreeFruitBasket() {
        MyTreeService.shared.requestPostMyTreeFruitBasket { networkResult in
            switch networkResult {
            case .success(let res):
                print(res)
            default:
                print("데이터 불러오기 실패")
            }
        }
    }
}

extension MyTreeVC: FloatingButtonVCDelegate {
    func addFruit() {
        self.fruit10.isHidden = false
    }
}
