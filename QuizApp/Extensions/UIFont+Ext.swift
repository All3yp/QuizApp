//
//  UIFont+Ext.swift
//  QuizApp
//
//  Created by Alley Pereira on 30/11/22.
//

import UIKit

extension UIFont {

	private static func customFont(name: String, size: CGFloat, withWeight weight: UIFont.Weight) -> UIFont {
		let font = UIFont(name: name, size: size) ?? UIFont.systemFont(ofSize: size, weight: weight)
		let descriptor = font.fontDescriptor.addingAttributes([
			.traits: [
				UIFontDescriptor.TraitKey.weight: weight
			]
		])
		return UIFont(descriptor: descriptor, size: size)
	}

	static func mainFont(ofSize size: CGFloat, withWeight: UIFont.Weight = .regular) -> UIFont {
		return customFont(name: "StyleScript", size: size, withWeight: withWeight)
	}

}
