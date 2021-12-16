//
//  AddTransactionCell.swift
//  FinanceProject
//
//  Created by Anna Radoutska on 05.12.2021.
//
import UIKit

class AddingFormCell: UITableViewCell {
    
    let backgroundAddCell: UIView = {
        let backgroundPartCell = UIView()
        backgroundPartCell.layer.cornerRadius = 10
        backgroundPartCell.translatesAutoresizingMaskIntoConstraints = false
        return backgroundPartCell
    }()
    
    /*let income : UIButton = {
       let label = UIButton()
        label.setTitle("Income", for: .normal)
        label.backgroundColor = #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)
        label.layer.cornerRadius = 5
        return label
        
    }()*/

    let addLAbel: UILabel = {
    let label = UILabel()
        
        return label
    }()
    
    let leftSwitchLabel = UILabel(text: "Income", font: UIFont(name: "Avenir Next", size: 16)!, alignment: .left, textColor: .gray)
    let rightSwitchLabel = UILabel(text: "Outcome", font: UIFont(name: "Avenir Next", size: 16)!, alignment: .right, textColor: .gray)
     
    let typeOfTransactionSwitch: UISwitch = {
        let typeSwitch = UISwitch()
        typeSwitch.isOn = false
        typeSwitch.onTintColor = #colorLiteral(red: 0.1764705926, green: 0.4980392158, blue: 0.7568627596, alpha: 1)
        
        typeSwitch.isHidden = true
        return typeSwitch
    }()
   /* let outcome : UIButton = {
       let label = UIButton()
        label.setTitle("Outcome", for: .normal)
        label.backgroundColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
        label.layer.cornerRadius = 5
        return label
        
    }()*/
    
    let cellNameArray = ["","Account","Category of transaction","Amount"]
    
    
    override init(style: CellView.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        setConstraints()
        
        typeOfTransactionSwitch.addTarget(self, action: #selector(switchChange(paramTarget:)), for: .valueChanged)
    }
    
    func cellConfigure (indexPath: IndexPath)
    {
        addLAbel.text = cellNameArray[indexPath.section]
         if indexPath == [0,0]
         {
            typeOfTransactionSwitch.isHidden = false
            SetConstraintsAdditional()
         }
    }
    
    @objc func switchChange (paramTarget: UISwitch) {
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    func setConstraints () {
        
        /* buttons at the top
         let mainStackView = UIStackView(arrangedSubviews: [income, outcome], axis: .horizontal, spacing: 0, distribution: .fillEqually)
        
        self.addSubview(mainStackView)
        mainStackView.backgroundColor = .clear
        
        
       NSLayoutConstraint.activate([
        mainStackView.topAnchor.constraint(equalTo: self.topAnchor, constant: 0),
        mainStackView.heightAnchor.constraint(equalTo: self.heightAnchor, constant: 0),
        mainStackView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 50),
        mainStackView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: 0),
        mainStackView.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 0)
       ])
        
       */
        let mainStackView = UIStackView(arrangedSubviews: [backgroundAddCell, addLAbel], axis: .horizontal, spacing: 0, distribution: .fillEqually)
                                        
        self.addSubview(backgroundAddCell)
        NSLayoutConstraint.activate([
            backgroundAddCell.topAnchor.constraint(equalTo: self.topAnchor, constant: 0),
            backgroundAddCell.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -1),
            backgroundAddCell.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 20),
            backgroundAddCell.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: 50),
            
        ])
        self.addSubview(mainStackView)
        NSLayoutConstraint.activate([
            mainStackView.centerYAnchor.constraint(equalTo: self.centerYAnchor),
            mainStackView.leadingAnchor.constraint(equalTo: backgroundAddCell.leadingAnchor, constant: 0),
            
        ])
        self.contentView.addSubview(typeOfTransactionSwitch)
        NSLayoutConstraint.activate([
            typeOfTransactionSwitch.centerYAnchor.constraint(equalTo: self.centerYAnchor),
            typeOfTransactionSwitch.trailingAnchor.constraint(equalTo: backgroundAddCell.trailingAnchor, constant: -20),
            typeOfTransactionSwitch.topAnchor.constraint(equalTo: self.topAnchor, constant: -20),
            
        ])
    }
    
    // adding constraints specifically for switch cell
    
    func SetConstraintsAdditional(){
        let mainStackView = UIStackView(arrangedSubviews: [leftSwitchLabel,typeOfTransactionSwitch, rightSwitchLabel], axis: .horizontal, spacing: 5, distribution: .equalCentering )
                                        
        self.addSubview(mainStackView)
        NSLayoutConstraint.activate([
            mainStackView.topAnchor.constraint(equalTo: self.topAnchor, constant: 5),
            mainStackView.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: 5),
            mainStackView.leadingAnchor.constraint(equalTo: backgroundAddCell.leadingAnchor, constant: 5),
            
            
        ])
    }
}
