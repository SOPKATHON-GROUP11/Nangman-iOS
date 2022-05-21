//
//  ViewController.swift
//  Winner-iOS-11
//
//  Created by madilyn on 2022/05/21.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func tapBtn(_ sender: Any) {
        guard let vc = UIStoryboard.init(name: MyTreeVC.className, bundle: nil).instantiateViewController(withIdentifier: MyTreeVC.className) as? MyTreeVC else { return }
        vc.modalPresentationStyle = .fullScreen
        self.present(vc, animated: true)
    }
    
}
