//
//  UILabel+.swift
//  Winner-iOS-11
//
//  Created by madilyn on 2022/05/21.
//

import UIKit

extension UILabel {
    func applyColor(to targetString: String, with color: UIColor) {
        if let labelText = self.text, labelText.count > 0 {
            let attributedString = NSMutableAttributedString(string: labelText)
            attributedString.addAttribute(.foregroundColor,
                                       value: color,
                                       range: (labelText as NSString).range(of: targetString))
            attributedText = attributedString
        }
    }

    func applyFont(to targetString: String, with font: UIFont) {
        if let labelText = self.text, labelText.count > 0 {
            let attributedString = NSMutableAttributedString(string: labelText)
            attributedString.addAttribute(.font,
                                       value: font,
                                       range: (labelText as NSString).range(of: targetString))
            attributedText = attributedString
        }
    }
}
