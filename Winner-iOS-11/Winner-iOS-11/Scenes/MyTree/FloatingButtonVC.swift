//
//  FloatingButtonVC.swift
//  Winner-iOS-11
//
//  Created by madilyn on 2022/05/22.
//

import UIKit

class FloatingButtonVC: UIViewController {
    
    
    @IBOutlet weak var appleButton: UIButton!
    @IBOutlet weak var persimmonButton: UIButton!
    
    @IBOutlet weak var appleCenterY: NSLayoutConstraint!
    @IBOutlet weak var persimmonCenterY: NSLayoutConstraint!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUI()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        UIView.animate(withDuration: 0.3, delay: 0, usingSpringWithDamping: 0.1, initialSpringVelocity: 0, options: .curveEaseOut) {
            
            self.appleCenterY.constant = 80
            self.persimmonCenterY.constant = 160
            
            self.view.layoutIfNeeded()  //이걸 꼭 써줘야 갱신이 됨.
        } completion: { completion in
            //애니메이션이 끝나는 시점에서 실행
        }
    }
    
    @IBAction func didTapBackgroundView(_ sender: Any) {
        self.dismiss(animated: true)
    }
    
    @IBAction func didTapPersimmonButton(_ sender: Any) {
        guard let writingVC = UIStoryboard.init(name: WritingVC.className, bundle: nil).instantiateViewController(withIdentifier: WritingVC.className) as? WritingVC else { return }
        writingVC.modalPresentationStyle = .fullScreen
        self.present(writingVC, animated: true)
    }
    @IBAction func didTapAppleButton(_ sender: Any) {
        guard let writingVC = UIStoryboard.init(name: WritingVC.className, bundle: nil).instantiateViewController(withIdentifier: WritingVC.className) as? WritingVC else { return }
        writingVC.modalPresentationStyle = .fullScreen
        self.present(writingVC, animated: true)
    }
    private func setUI() {
        appleCenterY.constant = 0
        persimmonCenterY.constant = 0
    }
}
