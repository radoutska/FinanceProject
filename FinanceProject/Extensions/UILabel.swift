//
//  UILabel.swift
//  FinanceProject
//
//  Created by Anna Radoutska on 05.12.2021.
//

import Foundation
import UIKit
extension UILabel {
    convenience init(text: String?, font: UIFont, alignment: NSTextAlignment, textColor: UIColor?) { //additional initializator to make parameters
        self.init()
        self.text = text
        self.font = font
        self.textAlignment = alignment
        self.textColor = textColor
        self.adjustsFontSizeToFitWidth = true
        
    }
}

