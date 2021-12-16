import UIKit

class HeaderCell: UITableViewHeaderFooterView {
    
    let headerLabel = UILabel(text: "", font: UIFont(name: "Avenir Next", size: 16)!, alignment: .center, textColor: .darkGray)
    let headerNameArray:[String] = ["TYPE","ACCOUNT","CATEGORY","AMOUNT"]
    
    //due to creating initializer for UILabel in UILabel.swift I can use initializer and create constants in short way
    override init(reuseIdentifier: String?) {
        super.init(reuseIdentifier: reuseIdentifier)
        setConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    func headerConfigure (section: Int)
    {
        headerLabel.text = headerNameArray[section]
    }
    
    func setConstraints () {
        //Using initializer which was defined in UIStackView.swift
        let mainStackView = UIStackView(arrangedSubviews: [headerLabel], axis: .horizontal, spacing: 10, distribution: .fillEqually)

        self.addSubview(mainStackView)
       NSLayoutConstraint.activate([
            mainStackView.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: 0),
        mainStackView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 25),
        
       ])
        
       
    }
}
