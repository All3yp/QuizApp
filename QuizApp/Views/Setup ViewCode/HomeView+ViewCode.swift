//
//  HomeView+ViewCode.swift
//  QuizApp
//
//  Created by Alley Pereira on 29/11/22.
//

import UIKit

extension HomeView: ViewCode {

	func addSubviews() {
		self.add(subviews: titleLabel, startButton)
		self.deactivateTranslateMaskIntoForViews()
	}

	func setupConstraints() {
			NSLayoutConstraint.activate([
				titleLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
				titleLabel.centerYAnchor.constraint(equalTo: centerYAnchor, constant: -150),

				startButton.centerXAnchor.constraint(equalTo: titleLabel.centerXAnchor),
				startButton.centerYAnchor.constraint(equalTo: self.centerYAnchor, constant: 2),
				startButton.widthAnchor.constraint(equalToConstant: self.bounds.width/2),
				startButton.heightAnchor.constraint(equalToConstant: 70)
			])
	}

	func setupAdditionalConfiguration() {
		startButton.layer.shadowColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.25).cgColor
		startButton.layer.shadowOffset = CGSize(width: 0.0, height: 5.0)
		startButton.layer.shadowOpacity = 1.0
		startButton.layer.shadowRadius = 0.0
		startButton.layer.masksToBounds = false
		startButton.layer.cornerRadius = 15.0
	}
}
