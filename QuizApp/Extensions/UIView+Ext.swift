//
//  UIView+Ext.swift
//  QuizApp
//
//  Created by Alley Pereira on 29/11/22.
//

import UIKit

extension UIView {
	func add(subviews: UIView...) {
		for subview in subviews {
			self.addSubview(subview)
		}
	}

	func deactivateTranslateMaskIntoForViews() {
		subviews.forEach { $0.translatesAutoresizingMaskIntoConstraints = false }
	}
}
