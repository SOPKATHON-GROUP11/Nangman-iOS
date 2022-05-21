//
//  PopUpVC.swift
//  Winner-iOS-11
//
//  Created by madilyn on 2022/05/21.
//

import UIKit

class PopUpVC: BaseVC {

    // MARK: - @IBOutlet Properties
    @IBOutlet weak var contentLabel: UILabel!
    @IBOutlet weak var leftButton: UIButton!
    @IBOutlet weak var rightButton: UIButton!
    @IBOutlet weak var containerView: UIView!
    
    // MARK: - View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setUI()
    }
    
    private func setUI() {
        self.modalPresentationStyle = .overFullScreen
        self.modalTransitionStyle = .crossDissolve
        
        contentLabel.textAlignment = .center
    }
    @IBAction func didTapLeftButton(_ sender: Any) {
        self.dismiss(animated: true)
    }
    
    func showPopUp(vc: UIViewController, message: String, rightButtonTitle: String, leftButtonTitle: String) {
        contentLabel.text = message
        DispatchQueue.main.async {
            self.rightButton.setTitle(rightButtonTitle, for: .normal)
            self.leftButton.setTitle(leftButtonTitle, for: .normal)
        }
        vc.present(self, animated: true)
    }
}
