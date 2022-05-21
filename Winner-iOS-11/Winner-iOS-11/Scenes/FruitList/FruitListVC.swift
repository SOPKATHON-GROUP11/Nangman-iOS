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
        
//        requestGetAllFruitURL() //모든 과일
        requestGetMyFruit() //내 과일
    }
    
    override func viewWillAppear(_ animated: Bool) {
//        requestGetAllFruitURL() //모든 과일
        requestGetMyFruit() //내 과일
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
//       return MyFruitListDataModel.count
   }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: FruitListTVC.className, for: indexPath)
        return cell
    }
}

extension FruitListVC {
    private func fetchData() {
        
    }
    
    private func requestGetAllFruitURL() {
        FruitListService.shared.requestGetAllFruitURL() { networkResult in
            switch networkResult {
            case .success(let res):
                guard let response = res as? [AllFruitListDataModel] else { return }
                print(response)
            default:
                print("데이터 불러오기 실패")
            }
        }
    }
    
    private func requestGetMyFruit() {
        FruitListService.shared.requestGetMyFruit() { networkResult in
            switch networkResult {
            case .success(let res):
                guard let response = res as? [MyFruitListDataModel] else { return }
                print("내과일")
                print(response)
            default:
                print("데이터 불러오기 실패")
            }
        }
    }
}

