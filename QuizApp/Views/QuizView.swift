//
//  QuizView.swift
//  QuizApp
//
//  Created by Alley Pereira on 30/11/22.
//

import UIKit

class QuizView: UIView {

	let numberOfQuestionsLabel: UILabel = {
		let label = UILabel()
		label.numberOfLines = 1
		label.textColor = .white
		label.text = "Question 2 de 10"
		label.font = UIFont.mainFont(ofSize: 19, withWeight: .regular)
		return label
	}()

	let clockImageView: UIImageView = {
		let imgView = UIImageView()
		let font = UIFont.systemFont(ofSize: 18)
		let config = UIImage.SymbolConfiguration(font: font)
		imgView.image = UIImage(systemName: "alarm", withConfiguration: config)
		imgView.contentMode = .scaleAspectFit
		imgView.tintColor = .white
		return imgView
	}()

	let timeMissingLabel: UILabel = {
		let label = UILabel()
		label.text = "44s"
		label.numberOfLines = 1
		label.textColor = .white
		label.font = UIFont.mainFont(ofSize: 19, withWeight: .regular)
		return label
	}()

	 lazy var clockTimeStackView: UIStackView = {
		let stackView = UIStackView()
		stackView.axis = .horizontal
		stackView.alignment = .fill
		stackView.distribution = .fillEqually
		stackView.spacing = 3
		return stackView
	}()

	let boardQuestionView = BoardQuestionView()

	let questionLabel: UILabel = {
		let label = UILabel()
		label.numberOfLines = 0
		label.textColor = .white
		label.lineBreakMode = .byWordWrapping
		label.text = "Lorem ipsum dolor sit amet, consectetur adipiscing elit?"
		label.font = UIFont.mainFont(ofSize: 20, withWeight: .regular)
		return label
	}()


	// MARK: Lifecycle
	override func didMoveToSuperview() {
		super.didMoveToSuperview()
		self.setupViewCode()
	}
}
