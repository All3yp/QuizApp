//
//  ViewCode.swift
//  QuizApp
//
//  Created by Alley Pereira on 29/11/22.
//

import Foundation

protocol ViewCode {
	func addSubviews()
	func setupConstraints()
	func setupAdditionalConfiguration()
}

extension ViewCode {
	func setupViewCode() {
		addSubviews()
		setupConstraints()
		setupAdditionalConfiguration()
	}

	func setupAdditionalConfiguration() { }
}
