//
//  MyTreeVC.swift
//  Winner-iOS-11
//
//  Created by madilyn on 2022/05/21.
//

import UIKit

class MyTreeVC: UIViewController {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func didTapWriteButton(_ sender: Any) {
        guard let floatingButtonVC = self.storyboard?.instantiateViewController(withIdentifier: FloatingButtonVC.className) as? FloatingButtonVC else { return }
        floatingButtonVC.modalPresentationStyle = .overCurrentContext
        floatingButtonVC.modalTransitionStyle = .crossDissolve
        self.present(floatingButtonVC, animated: true)
    }

}
