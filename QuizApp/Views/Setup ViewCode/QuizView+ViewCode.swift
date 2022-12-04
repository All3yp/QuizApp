//
//  QuizView+ViewCode.swift
//  QuizApp
//
//  Created by Alley Pereira on 30/11/22.
//

import UIKit

extension QuizView: ViewCode {
	
	func addSubviews() {
		clockTimeStackView.addArrangedSubview(clockImageView)
		clockTimeStackView.addArrangedSubview(timeMissingLabel)
		clockImageView.translatesAutoresizingMaskIntoConstraints = false
		timeMissingLabel.translatesAutoresizingMaskIntoConstraints = false
		self.add(subviews: clockTimeStackView,
				 numberOfQuestionsLabel,
				 boardQuestionView,
				 questionLabel,
				 alternativeToAnswerBoardView,
				 nextButton
		)
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

			questionLabel.topAnchor.constraint(equalTo: boardQuestionView.topAnchor, constant: 5),
			questionLabel.bottomAnchor.constraint(equalTo: boardQuestionView.bottomAnchor, constant: -5),
			questionLabel.leadingAnchor.constraint(equalTo: boardQuestionView.leadingAnchor, constant: 14),
			questionLabel.trailingAnchor.constraint(equalTo: boardQuestionView.trailingAnchor, constant: -14),

			alternativeToAnswerBoardView.topAnchor.constraint(equalTo: boardQuestionView.bottomAnchor, constant: 50),
			alternativeToAnswerBoardView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 25),
			alternativeToAnswerBoardView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -25),
			alternativeToAnswerBoardView.heightAnchor.constraint(equalToConstant: 70),

			nextButton.bottomAnchor.constraint(equalTo: self.safeAreaLayoutGuide.bottomAnchor, constant: -80),
			nextButton.centerXAnchor.constraint(equalTo: self.centerXAnchor),
			nextButton.widthAnchor.constraint(equalToConstant: self.bounds.width/2),
			nextButton.heightAnchor.constraint(equalToConstant: 70)
		])
	}

	func setupAdditionalConfiguration() {
		nextButton.layer.shadowColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.25).cgColor
		nextButton.layer.shadowOffset = CGSize(width: 0.0, height: 5.0)
		nextButton.layer.shadowOpacity = 1.0
		nextButton.layer.shadowRadius = 0.0
		nextButton.layer.masksToBounds = false
		nextButton.layer.cornerRadius = 15.0
	}

}
