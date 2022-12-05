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
		label.text = "Question 2 de 10" // Debug View
		label.font = UIFont.mainFont(ofSize: 21, withWeight: .light)
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
		label.text = "44s" // Debug View
		label.numberOfLines = 1
		label.textColor = .white
		label.font = UIFont.mainFont(ofSize: 19)
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
		label.text = "Lorem ipsum dolor sit amet, consectetur adipiscing elit?" // Debug View
		label.font = UIFont.mainFont(ofSize: 20)
		return label
	}()

	let alternativeToAnswerBoardView = AlternativeToAnswerView()

	let nextButton: UIButton = {
		let bnt = UIButton(type: .system)
		bnt.setTitle("Next", for: .normal)
		bnt.backgroundColor = UIColor.CustomColor.yellow
		bnt.setTitleColor(UIColor.CustomColor.dark, for: .normal)
		bnt.titleLabel?.font = UIFont.mainFont(ofSize: 25, withWeight: .light)
		return bnt
	}()

	// MARK: Lifecycle
	override func didMoveToSuperview() {
		super.didMoveToSuperview()
		self.setupViewCode()
	}
}
