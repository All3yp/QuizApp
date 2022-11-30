//
//  CustomColor+Ext.swift
//  QuizApp
//
//  Created by Alley Pereira on 29/11/22.
//

import UIKit

extension UIColor {

	struct CustomColor {
		static let darkBlue = UIColor(hex: 0x04050b)
	}

	convenience init(red: Int, green: Int, blue: Int) {
		assert(red >= 0 && red <= 255, "Invalid red compoment")
		assert(green >= 0 && green <= 255, "Invalid green compoment")
		assert(blue >= 0 && blue <= 255, "Invalid blue compoment")

		self.init(
			red: CGFloat(red) / 255.0,
			green: CGFloat(green) / 255.0,
			blue: CGFloat(blue) / 255.0,
			alpha: 1.0
		)
	}

	convenience init(hex: Int) {
		self.init(red: (hex >> 16) & 0xff, green: (hex >> 8) & 0xff, blue: hex & 0xff)
	}
}
