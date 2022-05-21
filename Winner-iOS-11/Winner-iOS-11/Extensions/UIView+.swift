//
//  UIView+.swift
//  Winner-iOS-11
//
//  Created by madilyn on 2022/05/21.
//

import UIKit

enum VerticalLocation {
    case bottom
    case top
    case left
    case right
    case bottomRight
    case nadoBotttom
}

extension UIView {
    /// 진동 온 것처럼 흔들리게 하는 메서드
    func shake() {
        let animation = CAKeyframeAnimation(keyPath: "transform.translation.x")
        animation.timingFunction = CAMediaTimingFunction(name: CAMediaTimingFunctionName.linear)
        animation.duration = 0.3
        animation.values = [-5.0, 5.0, -5.0, 5.0 ,-2.0, 2.0, 0.0 ]
        self.layer.add(animation, forKey: "shake")
    }
    
    func addShadow(location: VerticalLocation, color: UIColor = .gray, opacity: Float = 0.2, radius: CGFloat = 5.0) {
    switch location {
    case .bottom:
        addShadow(offset: CGSize(width: 0, height: 10), color: color, opacity: opacity, radius: radius)
    case .top:
        addShadow(offset: CGSize(width: 0, height: -4), color: color, opacity: opacity, radius: radius)
    case .left:
        addShadow(offset: CGSize(width: -10, height: 0), color: color, opacity: opacity, radius: radius)
    case .right:
        addShadow(offset: CGSize(width: 10, height: 0), color: color, opacity: opacity, radius: radius)
    case .bottomRight:
        addShadow(offset: CGSize(width: 3, height: 3), color: color, opacity: opacity, radius: radius)
    case .nadoBotttom:
        addShadow(offset: CGSize(width: 0, height: 4), color: color, opacity: opacity, radius: radius)
    }
    
}

/// UIView의 그림자를 설정하는 메서드
func addShadow(offset: CGSize, color: UIColor = .gray, opacity: Float = 0.1, radius: CGFloat = 3.0) {
    self.layer.masksToBounds = false
    self.layer.shadowColor = color.cgColor
    self.layer.shadowOffset = offset
    self.layer.shadowOpacity = opacity
    self.layer.shadowRadius = radius
}
    
    /// UIView 의 모서리가 둥근 정도를 설정하는 메서드
    func makeRounded(cornerRadius : CGFloat?) {
        if let cornerRadius_ = cornerRadius {
            self.layer.cornerRadius = cornerRadius_
        }  else {
            // cornerRadius 가 nil 일 경우의 default
            self.layer.cornerRadius = self.layer.frame.height / 2
        }
        
        self.layer.masksToBounds = true
    }
}
