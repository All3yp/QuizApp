//
//  QuizView.swift
//  QuizApp
//
//  Created by Alley Pereira on 30/11/22.
//

import UIKit

class QuizView: UIView {

	var didTapBntToFinishQuiz: (() -> Void)?

	let numberOfQuestionsLabel: UILabel = {
		let label = UILabel()
		label.numberOfLines = 1
		label.textColor = .white
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
		label.font = UIFont.mainFont(ofSize: 20)
		return label
	}()

	let alternativeToAnswerBoardView01 = AlternativeToAnswerView()
	let alternativeToAnswerBoardView02 = AlternativeToAnswerView()
	let alternativeToAnswerBoardView03 = AlternativeToAnswerView()
	let alternativeToAnswerBoardView04 = AlternativeToAnswerView()

	lazy var nextButton: UIButton = {
		let bnt = UIButton(type: .system)
		bnt.setTitle("Next", for: .normal)
		bnt.backgroundColor = UIColor.CustomColor.yellow
		bnt.setTitleColor(UIColor.CustomColor.dark, for: .normal)
		bnt.titleLabel?.font = UIFont.mainFont(ofSize: 25, withWeight: .light)
		bnt.addTarget(self, action: #selector(finishQuizActionButtonPressed), for: .touchUpInside)
		return bnt
	}()

	// MARK: Lifecycle
	override func didMoveToSuperview() {
		super.didMoveToSuperview()
		self.setupViewCode()
	}

	// Actions
	@objc func finishQuizActionButtonPressed(_ sender: UIButton) {
		didTapBntToFinishQuiz?()
		
	}

	// Load
	func updateQuizView(questionAnswered: Int, total: Int, question: String, answers: [String]) {
		var answers = answers
		DispatchQueue.main.async { [self] in
			self.numberOfQuestionsLabel.text = "Question \(questionAnswered) of \(total)"
			self.questionLabel.text = question
			self.alternativeToAnswerBoardView01.answerAlternativeLabel.text = answers.popLast()
			self.alternativeToAnswerBoardView02.answerAlternativeLabel.text = answers.popLast()
			self.alternativeToAnswerBoardView03.answerAlternativeLabel.text = answers.popLast()
			self.alternativeToAnswerBoardView04.answerAlternativeLabel.text = answers.popLast()
		}
	}
}
