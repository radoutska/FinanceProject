//
//  NewTransaction.swift
//  FinanceProject
//
//  Created by Anna Radoutska on 05.12.2021.
//

import UIKit

class NewTransactionController: UITableViewController {
    
    
    let cellId = "cellId"
    let headerId = "headerId"
    
 
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        
        
        tableView.register(AddingFormCell.self, forCellReuseIdentifier: cellId)
        tableView.register(HeaderCell.self, forHeaderFooterViewReuseIdentifier: headerId)
        title = "Add new transaction"
        
        tableView.separatorStyle = .none
        
        navigationItem.rightBarButtonItem = UIBarButtonItem (barButtonSystemItem: .save, target: self, action: #selector(saveButtonTapped))
    }
    @objc func saveButtonTapped() {
        print("Save")
        
        let financeModel = FinanceModel()
        financeModel.type = true
        financeModel.category = "Health"
        financeModel.data = Date()
        financeModel.amount = 100
        RealmManager.shared.saveFinanceModel(model: financeModel)
    }
    
    
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let head = tableView.dequeueReusableHeaderFooterView(withIdentifier: headerId) as! HeaderCell
        head.headerConfigure(section: section)
        return head
    }
   
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 44
    }
    
    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 40
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 4
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellId, for: indexPath) as! AddingFormCell
        cell.cellConfigure(indexPath: indexPath)
        return cell
    }
   
}
