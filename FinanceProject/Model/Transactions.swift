//
//  Transactions.swift
//  TestTaskAmazingApps
//
//  Created by Anna Radoutska on 04.12.2021.
//

import UIKit

struct Transaction {
    let nameOfTransaction: String
    let nameOfCategory: String
    let priceForTransaction: Int
}

extension Transaction {
   static func getList() -> [Transaction] {
        [ Transaction(nameOfTransaction: "apples", nameOfCategory: "food", priceForTransaction: 20),
        Transaction(nameOfTransaction: "washing machine", nameOfCategory: "technic", priceForTransaction: 3000),Transaction(nameOfTransaction: "washing machine", nameOfCategory: "technic", priceForTransaction: 3000),Transaction(nameOfTransaction: "washing machine", nameOfCategory: "technic", priceForTransaction: 3000),Transaction(nameOfTransaction: "washing machine", nameOfCategory: "technic", priceForTransaction: 3000),Transaction(nameOfTransaction: "washing machine", nameOfCategory: "technic", priceForTransaction: 4000),Transaction(nameOfTransaction: "wakum cleaner", nameOfCategory: "technic", priceForTransaction: 5000),Transaction(nameOfTransaction: "dress dior", nameOfCategory: "fashion", priceForTransaction: 6000),Transaction(nameOfTransaction: "vitamins", nameOfCategory: "health", priceForTransaction: 7000),Transaction(nameOfTransaction: "washing machine", nameOfCategory: "technic", priceForTransaction: 8000),Transaction(nameOfTransaction: "washing machine", nameOfCategory: "technic", priceForTransaction: 9000),Transaction(nameOfTransaction: "washing machine", nameOfCategory: "technic", priceForTransaction: 10000)]
    }
}

