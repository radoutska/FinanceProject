//
//  StatisticsVIewController.swift
//  TestTaskAmazingApps
//
//  Created by Anna Radoutska on 04.12.2021.
//


import UIKit

class StatisticsViewController: UITabBarController {

  
    
    let tableView = UITableView()
    let cellId = "Cellid"
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Statistics"
        view.backgroundColor = .white
        view.addSubview(tableView)
        tableView.register(StatisticsCellView.self, forCellReuseIdentifier: cellId)
        tableView.dataSource = self
        tableView.delegate = self
        
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        tableView.frame = view.bounds
        
    }
}

extension StatisticsViewController: UITableViewDelegate, UITableViewDataSource {
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {  //количество строк
      return 5
     }
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return ""
    }

    func numberOfSections(in tableView: UITableView) -> Int
    {
        return 1 //по количеству категорий
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 70
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell { //вывод данных в ячейку
        let cell = tableView.dequeueReusableCell(withIdentifier: cellId, for: indexPath) as! StatisticsCellView
        return cell
        }
}

