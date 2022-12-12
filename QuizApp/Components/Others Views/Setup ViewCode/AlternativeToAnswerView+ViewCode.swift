//
//  AlternativeToAnswerView+ViewCode.swift
//  QuizApp
//
//  Created by Alley Pereira on 03/12/22.
//

import UIKit

extension AlternativeToAnswerView: ViewCode {

	func addSubviews() {
		self.add(
			subviews: numberAlternativeLabel,
			lineView,
			answerAlternativeLabel,
			rightOrWrongIconImageView
		)
		self.deactivateTranslateMaskIntoForViews()
	}

	func setupConstraints() {
		NSLayoutConstraint.activate([
			numberAlternativeLabel.centerYAnchor.constraint(equalTo: self.centerYAnchor),
			numberAlternativeLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 20),

			lineView.centerYAnchor.constraint(equalTo: self.centerYAnchor),
			lineView.leadingAnchor.constraint(equalTo: numberAlternativeLabel.trailingAnchor, constant: 15),
			lineView.heightAnchor.constraint(equalToConstant: bounds.height/2),
			lineView.widthAnchor.constraint(equalToConstant: 2),

			answerAlternativeLabel.centerYAnchor.constraint(equalTo: self.centerYAnchor),
			answerAlternativeLabel.leadingAnchor.constraint(equalTo: lineView.trailingAnchor, constant: 15),

			rightOrWrongIconImageView.centerYAnchor.constraint(equalTo: self.centerYAnchor),
			rightOrWrongIconImageView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -20),
			rightOrWrongIconImageView.heightAnchor.constraint(equalToConstant: 30),
			rightOrWrongIconImageView.widthAnchor.constraint(equalToConstant: 30),
		])
	}

}
