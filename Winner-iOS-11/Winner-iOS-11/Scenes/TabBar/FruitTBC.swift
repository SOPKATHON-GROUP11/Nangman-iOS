//
//  T.swift
//  Winner-iOS-11
//
//  Created by madilyn on 2022/05/21.
//

import UIKit

class FruitTBC: UITabBarController {

    // MARK: - View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()

        setTabBarController()
    }

    // MARK: - Functions
    func setTabBarController(){
        let fruitListSB = UIStoryboard.init(name: "FruitListVC", bundle: nil)
        let myTreeSB = UIStoryboard.init(name: "MyTreeVC", bundle: nil)
    
        guard let allFruitListVC = fruitListSB.instantiateViewController(withIdentifier:                                 FruitListVC.className) as? FruitListVC,
              let myTreeVC = myTreeSB.instantiateViewController(withIdentifier:
                    MyTreeVC.className) as? MyTreeVC,
              let myFruitListVC = fruitListSB.instantiateViewController(withIdentifier:
                    FruitListVC.className) as? FruitListVC
        else { return }
        
//        allFruitListVC.tabBarItem = UITabBarItem (title: "모든과일", image: UIImage(systemName: "hous.fill"  ), selectedImage: UIImage(systemName: "house.fill"))
//        myTreeVC.tabBarItem = UITabBarItem (title: "마이트리", image: UIImage(systemName: "hous.fill"  ), selectedImage: UIImage(systemName: "house.fill"))
//        myFruitListVC.tabBarItem = UITabBarItem (title: "내과일", image: UIImage(systemName: "hous.fill"  ), selectedImage: UIImage(systemName: "house.fill"))
        
        tabBar.unselectedItemTintColor = .fruitGreen
        tabBar.tintColor = .fruitDeepGreen

        allFruitListVC.tabBarItem = UITabBarItem (title: "모든 과일", image: UIImage(named: "icAll" ), selectedImage:  UIImage(named: "icAll_selected"))
        myTreeVC.tabBarItem = UITabBarItem (title: "마이 트리", image: UIImage(named: "icHome"), selectedImage: UIImage(named: "icHome_selected"))
        myFruitListVC.tabBarItem = UITabBarItem (title: "내 과일", image: UIImage(named: "icMypage"), selectedImage: UIImage(named: "icMypage_selected" ))
        
//        allFruitListVC.isAll = false

        setViewControllers([allFruitListVC, myTreeVC, myFruitListVC], animated: true)
    }
}

