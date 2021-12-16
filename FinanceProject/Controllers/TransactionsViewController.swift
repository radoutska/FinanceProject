//
//  TransactionsViewController.swift
//  TestTaskAmazingApps
//
//  Created by Anna Radoutska on 04.12.2021.
//


import UIKit

class TransactionsViewController: UITabBarController {
    
    var trans: [Transaction] = Transaction.getList()
    
    let tableView = UITableView()
    let cellId = "Cellid"
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Transactions"
        view.backgroundColor = .white
        view.addSubview(tableView)
        tableView.register(CellView.self, forCellReuseIdentifier: cellId)
        tableView.dataSource = self
        tableView.delegate = self
        
        navigationItem.rightBarButtonItem = UIBarButtonItem (barButtonSystemItem: .add, target: self, action: #selector(AddButtonTapped))
    }
    @objc func AddButtonTapped() {
        let newOperation = NewTransactionController()
        navigationController?.pushViewController(newOperation, animated: true)
        
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        tableView.frame = view.bounds
        
    }
}

extension TransactionsViewController: UITableViewDelegate, UITableViewDataSource {
    
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 40
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {  //количество строк
        if trans.count > 10 {
            return  10
        }
        else
        {
            return trans.count
        }
     }
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "Card"
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let label = UILabel(text: "Card", font: UIFont(name: "Avenir Next",size: 20)!, alignment: .center, textColor: .white)
        label.backgroundColor = #colorLiteral(red: 0.7560477503, green: 0.7560477503, blue: 0.7560477503, alpha: 1)
        return label
    }

    func numberOfSections(in tableView: UITableView) -> Int
    {
        return 3 //по количеству категорий
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 70
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell { //вывод данных в ячейку
        let cell = tableView.dequeueReusableCell(withIdentifier: cellId, for: indexPath) as! CellView
        return cell
        
        }
}


extension TransactionsViewController {
    
    func setConstraints() {
        view.addSubview(tableView)
        NSLayoutConstraint.activate ( [tableView.topAnchor.constraint(equalTo: tableView.topAnchor, constant: 10), tableView.bottomAnchor.constraint(equalTo: tableView.bottomAnchor, constant: 0)])
    }
}


