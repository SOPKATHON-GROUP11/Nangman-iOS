//
//  WritingVC.swift
//  Winner-iOS-11
//
//  Created by madilyn on 2022/05/21.
//

import UIKit

protocol WritingVCDelegate: AnyObject {
    func post()
    func goHome()
}
class WritingVC: BaseVC {

    // MARK: - @IBOutlet Properties
    @IBOutlet weak var placeholderLabel: UILabel!
    @IBOutlet weak var inputTextView: UITextView!
    @IBOutlet weak var textCountLabel: UILabel!
    @IBOutlet weak var appleBtn: UIButton!
    @IBOutlet weak var persimmonBtn: UIButton!
    @IBOutlet weak var fruitImageView: UIImageView!
    @IBOutlet weak var suggestionLabel: UILabel!
    weak var delegate: WritingVCDelegate?
    
    var fruitType: FruitType = .apple
//    weak var delegate: WritingVCDelegate
    // MARK: - View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        setDelegate()
    }
    
    // MARK: - Functions
    func setDelegate() {
        inputTextView.delegate = self
    }

    func checkMaxLength(_ textView: UITextView) {
        if (textView.text.count) > 200 {
            textView.deleteBackward()
        }
    }
    
    
    @IBAction func DidTapFruitChangeBtn(_ sender: UIButton) {
        sender.backgroundColor = UIColor.fruitRed
        sender.tintColor = .white
        if sender.tag == 1 {
            persimmonBtn.backgroundColor = .fruitLightGray
            persimmonBtn.tintColor = .fruitGray1
            fruitImageView.image = UIImage(named: "4")
            fruitType = .apple
            suggestionLabel.textColor = UIColor.fruitRed
            suggestionLabel.text = "사과의 마음을 담아봐요"
        } else {
            appleBtn.backgroundColor = .fruitLightGray
            appleBtn.tintColor = .fruitGray1
            fruitImageView.image = UIImage(named: "persimmon")
            fruitType = .persimmon
            suggestionLabel.textColor = .fruitOrange
            suggestionLabel.text = "감사의 마음을 담아봐요"
        }
    }
    
    
    @IBAction func didTapPostFruit(_ sender: UIButton) {
        PostFruitService.shared.postFruit(fruitType: fruitType, contents: inputTextView.text) { response in
            switch response {
            case .success(let data):
                print(data)
                isPosted = true
                self.delegate?.post()
                self.dismiss(animated: true)
            case .requestErr(let data):
                print(data)
            case .pathErr:
                print("pathErr")
            case .serverErr:
                print("serverError")
            case .networkFail:
                print("networkFail")
            }
        }
    }
    
    @IBAction func didTapCancelBtn(_ sender: UIButton) {
        guard let alert = Bundle.main.loadNibNamed(PopUpVC.className, owner: self, options: nil)?.first as? PopUpVC else { return }
        alert.leftButton.press {
            self.dismiss(animated: true, completion: nil)
        }
        alert.rightButton.press {
            self.dismiss(animated: true) {
                self.delegate?.goHome()
                self.dismiss(animated: true)
                
            }
        }
        alert.showPopUp(vc: self, message:
                            """
                            열매 달기를 그만두실건가요?
                            작성된 글은 삭제돼요
                            """
                            , rightButtonTitle: "안달래요"

                            , leftButtonTitle: "달래요")
    }
}


// MARK: - Extensions
extension WritingVC: UITextViewDelegate {
    func textViewDidChange(_ textView: UITextView) {
        placeholderLabel.isHidden = !inputTextView.text.isEmpty
        checkMaxLength(textView)
        let count = textView.text.count
        textCountLabel.text = "\(count)/200"
    }
}
