//
//  ViewController.swift
//  TestTaskAmazingApps
//
//  Created by Anna Radoutska on 04.12.2021.
//

import UIKit

class MainTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setUpTapBar()
    }
    func setUpTapBar() {
        let transactionsViewController = createNavController(vc: TransactionsViewController(), itemName: "Transactions", itemImage: "Transaction.icon")
        let statisticsViewController = createNavController(vc: StatisticsViewController(), itemName: "Statistics", itemImage: "TransactionIcon")
        viewControllers = [transactionsViewController, statisticsViewController]
        
    }
    
    func createNavController (vc: UIViewController, itemName: String, itemImage: String) -> UINavigationController
    {
        let item = UITabBarItem (title: itemName, image: UIImage.init(systemName: itemImage)?.withAlignmentRectInsets(.init(top: 10, left: 0, bottom: 0, right: 0)), tag: 0) //creating item for tap bar with alignment for top
        item.titlePositionAdjustment = .init(horizontal: 0, vertical: 10)
        let navController = UINavigationController(rootViewController: vc)
        navController.tabBarItem = item
        return navController
    }
    

}

