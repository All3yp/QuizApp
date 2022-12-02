//
//  UIFont+Ext.swift
//  QuizApp
//
//  Created by Alley Pereira on 30/11/22.
//

import UIKit

extension UIFont {

	private static func customFont(name: String, size: CGFloat, withWeight: UIFont.Weight) -> UIFont {
		let font = UIFont(name: name, size: size)
		assert(font != nil, "Can't load font: \(name)")
		return font ?? UIFont.systemFont(ofSize: size, weight: withWeight)
	}

	static func mainFont(ofSize size: CGFloat, withWeight: UIFont.Weight = .regular) -> UIFont {
		return customFont(name: "Avenir Next", size: size, withWeight: withWeight)
	}

}
