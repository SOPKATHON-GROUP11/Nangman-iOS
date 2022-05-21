//
//  WritingVC.swift
//  Winner-iOS-11
//
//  Created by madilyn on 2022/05/21.
//

import UIKit

class WritingVC: BaseVC {

    // MARK: - @IBOutlet Properties
    @IBOutlet weak var placeholderLabel: UILabel!
    @IBOutlet weak var inputTextView: UITextView!
    @IBOutlet weak var textCountLabel: UILabel!
    @IBOutlet weak var appleBtn: UIButton!
    @IBOutlet weak var persimmonBtn: UIButton!
    @IBOutlet weak var fruitImageView: UIImageView!
    
    var fruitType: FruitType = .apple
    
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
        } else {
            appleBtn.backgroundColor = .fruitLightGray
            appleBtn.tintColor = .fruitGray1
            fruitImageView.image = UIImage(named: "감이당 1")
            fruitType = .persimmon
        }
    }
    
    
    @IBAction func didTapPostFruit(_ sender: UIButton) {
        PostFruitService.shared.postFruit(fruitType: fruitType, contents: inputTextView.text) { response in
            switch response {
            case .success(let data):
                print(data)
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
