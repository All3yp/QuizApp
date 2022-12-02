//
//  QuizView+ViewCode.swift
//  QuizApp
//
//  Created by Alley Pereira on 30/11/22.
//

import UIKit

extension QuizView: ViewCode {
	
	func addSubviews() {
		self.add(subviews: clockTimeStackView,
				 numberOfQuestionsLabel,
				 boardQuestionView,
				 questionLabel
		)
		clockTimeStackView.addArrangedSubview(clockImageView)
		clockTimeStackView.addArrangedSubview(timeMissingLabel)
		self.deactivateTranslateMaskIntoForViews()
	}

	func setupConstraints() {
		NSLayoutConstraint.activate([
			clockTimeStackView.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor),
			clockTimeStackView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),

			numberOfQuestionsLabel.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor),
			numberOfQuestionsLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),

			boardQuestionView.topAnchor.constraint(equalTo: clockTimeStackView.bottomAnchor, constant: 40),
			boardQuestionView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 50),
			boardQuestionView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -50),
			boardQuestionView.heightAnchor.constraint(equalToConstant: 180),

			questionLabel.topAnchor.constraint(equalTo: boardQuestionView.safeAreaLayoutGuide.topAnchor, constant: 5),
			questionLabel.bottomAnchor.constraint(equalTo: boardQuestionView.safeAreaLayoutGuide.bottomAnchor, constant: -5),
			questionLabel.leadingAnchor.constraint(equalTo: boardQuestionView.safeAreaLayoutGuide.leadingAnchor, constant: 14),
			questionLabel.trailingAnchor.constraint(equalTo: boardQuestionView.safeAreaLayoutGuide.trailingAnchor, constant: -14)

		])
	}

}
