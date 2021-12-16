//
//  TransactionCell.swift
//  TestTaskAmazingApps
//
//  Created by Anna Radoutska on 04.12.2021.
//

import UIKit

class CellView: UITableViewCell {
    
    //due to creating initializer for UILabel in UILabel.swift I can use initializer and create constants in short way
    
    let TransactionName = UILabel(text: "Name Of Transaction", font: UIFont(name: "Avenir Next", size: 20)! , alignment: .left, textColor: .black)
    
    let PriceTitle = UILabel(text: "Price", font: UIFont(name: "Avenir Next", size: 22)! , alignment: .right, textColor: .black)
    
    let dateOfTransaction = UILabel(text: "Date", font: UIFont(name: "Avenir Next", size: 14)! , alignment: .left, textColor: .gray)
    
    
    override init(style: CellView.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setConstraints()
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    func setConstraints () {
        
        //Using initializer which was defined in UIStackView.swift
        let mainStackView = UIStackView(arrangedSubviews: [TransactionName, PriceTitle], axis: .horizontal, spacing: 10, distribution: .fillEqually)

        self.addSubview(mainStackView)
       NSLayoutConstraint.activate([
        mainStackView.topAnchor.constraint(equalTo: self.topAnchor, constant: 0),
        mainStackView.heightAnchor.constraint(equalTo: self.heightAnchor, constant: 10),
        mainStackView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 20),
        mainStackView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -25)
       ])
        
        self.addSubview(dateOfTransaction)
       NSLayoutConstraint.activate([
        dateOfTransaction.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: 0),
        dateOfTransaction.heightAnchor.constraint(equalTo: self.heightAnchor, constant: 10),
        dateOfTransaction.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 20),
        dateOfTransaction.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -25)
       ])
    }
}
class StatisticsCellView: UITableViewCell {
    
    let categoryName = UILabel(text: "Category", font: UIFont(name: "Arial", size: 18)!, alignment: .left, textColor: .black)
    let totalAmount = UILabel(text: "Category", font: UIFont(name: "Arial", size: 18)!, alignment: .left, textColor: .red)
    
    override init(style: CellView.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setConstraints()
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    func setConstraints () {
        
        //Using initializer which was defined in UIStackView.swift
        let mainStackView = UIStackView(arrangedSubviews: [categoryName, totalAmount], axis: .horizontal, spacing: 10, distribution: .fillEqually)

        self.addSubview(mainStackView)
       NSLayoutConstraint.activate([
        mainStackView.topAnchor.constraint(equalTo: self.topAnchor, constant: 0),
        mainStackView.heightAnchor.constraint(equalTo: self.heightAnchor, constant: 10),
        mainStackView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 20),
        mainStackView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -25)
       ])
    }
}
