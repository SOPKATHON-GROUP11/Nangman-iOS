//
//  FruitListVC.swift
//  Winner-iOS-11
//
//  Created by madilyn on 2022/05/21.
//

import UIKit

class FruitListVC: UIViewController {

   // MARK: - @IBOutlet Properties
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var fruitListTV: UITableView!
    
    var isAll = true
    
    // MARK: - View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    private func setTableView() {
        let fruitListNib = UINib(nibName: FruitListTVC.className, bundle: nil)
        fruitListTV.register(fruitListNib, forCellReuseIdentifier: FruitListTVC.className)
        
        fruitListTV.delegate = self
        fruitListTV.dataSource = self
    }
}

extension FruitListVC: UITableViewDelegate{
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
}

extension FruitListVC: UITableViewDataSource {
   func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       return 1
        //return FruitListDataModel.sampleData.count
   }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: FruitListTVC.className, for: indexPath)
        return cell
    }
}

