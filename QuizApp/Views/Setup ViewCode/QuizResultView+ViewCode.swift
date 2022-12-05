//
//  QuizResultView+ViewCode.swift
//  QuizApp
//
//  Created by Alley Pereira on 05/12/22.
//

import UIKit

extension QuizResultView: ViewCode {

	func addSubviews() {
		self.add(
			subviews: quizResultTitleLabel,
				 trophyImageView,
			congratsNameLabel,
			yourScoreNameLabel,
			scoreLabel,
			takeNewQuizButton
		)
		self.deactivateTranslateMaskIntoForViews()
	}

	func setupConstraints() {
		NSLayoutConstraint.activate([
			quizResultTitleLabel.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor),
			quizResultTitleLabel.centerXAnchor.constraint(equalTo: self.centerXAnchor),

			trophyImageView.topAnchor.constraint(equalTo: quizResultTitleLabel.bottomAnchor, constant: 50),
			trophyImageView.centerXAnchor.constraint(equalTo: self.centerXAnchor),
			trophyImageView.widthAnchor.constraint(equalToConstant: 170),
			trophyImageView.heightAnchor.constraint(equalToConstant: 170),

			congratsNameLabel.topAnchor.constraint(equalTo: trophyImageView.bottomAnchor, constant: 50),
			congratsNameLabel.centerXAnchor.constraint(equalTo: self.centerXAnchor),

			yourScoreNameLabel.topAnchor.constraint(equalTo: congratsNameLabel.bottomAnchor, constant: 40),
			yourScoreNameLabel.centerXAnchor.constraint(equalTo: self.centerXAnchor),

			scoreLabel.topAnchor.constraint(equalTo: yourScoreNameLabel.bottomAnchor, constant: 40),
			scoreLabel.centerXAnchor.constraint(equalTo: self.centerXAnchor),

			takeNewQuizButton.bottomAnchor.constraint(equalTo: self.safeAreaLayoutGuide.bottomAnchor, constant: -60),
			takeNewQuizButton.centerXAnchor.constraint(equalTo: self.centerXAnchor),
			takeNewQuizButton.widthAnchor.constraint(equalToConstant: self.bounds.width/2),
			takeNewQuizButton.heightAnchor.constraint(equalToConstant: 70)
		])
	}

	func setupAdditionalConfiguration() {
		takeNewQuizButton.layer.shadowColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.25).cgColor
		takeNewQuizButton.layer.shadowOffset = CGSize(width: 0.0, height: 5.0)
		takeNewQuizButton.layer.shadowOpacity = 1.0
		takeNewQuizButton.layer.shadowRadius = 0.0
		takeNewQuizButton.layer.masksToBounds = false
		takeNewQuizButton.layer.cornerRadius = 15.0
	}

}
