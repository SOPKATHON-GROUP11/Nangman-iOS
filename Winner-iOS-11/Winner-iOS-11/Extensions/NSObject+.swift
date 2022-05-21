//
//  NSObject+.swift
//  Winner-iOS-11
//
//  Created by madilyn on 2022/05/21.
//

import Foundation

extension NSObject {
    static var className: String {
        return String(describing: self)
    }
    
    var className: String {
        NSStringFromClass(self.classForCoder).components(separatedBy: ".").last!
    }
}
