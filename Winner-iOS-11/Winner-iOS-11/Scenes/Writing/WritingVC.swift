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
