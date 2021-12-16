//
//  UIStackView.swift
//  FinanceProject
//
//  Created by Anna Radoutska on 05.12.2021.
//

import Foundation
import UIKit
extension UIStackView {
    convenience init(arrangedSubviews: [UIView], axis:NSLayoutConstraint.Axis, spacing: CGFloat,distribution: UIStackView.Distribution) { //additional initializator to make parameters for stackView easier to define
        self.init(arrangedSubviews: arrangedSubviews)
        self.axis = axis
        self.spacing = spacing
        self.distribution = distribution
        self.translatesAutoresizingMaskIntoConstraints = false
    }
}
