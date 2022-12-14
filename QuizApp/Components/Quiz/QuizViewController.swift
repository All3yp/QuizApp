//
//  QuizViewController.swift
//  QuizApp
//
//  Created by Alley Pereira on 02/12/22.
//

import UIKit

class QuizViewController: UIViewController, QuizDelegate {

	var coordinator: QuizCoordinator?
	let quizView: QuizView = QuizView()

	var questionAnswered: Int = 1
	lazy var viewModel = QuizViewModel(delegate: self)

	// MARK:  - Lifecycle
	override func loadView() {
		self.view = quizView
	}

	override func viewDidLoad() {
		super.viewDidLoad()
		self.view.backgroundColor = UIColor.CustomColor.dark
		goToFinalResult()
		self.viewModel.loadQuizQuestionsForComputerScience()
	}

	private func goToFinalResult() {
		self.quizView.didTapBntToFinishQuiz = { [weak self] in
			guard let self else { return }
			self.coordinator?.coordinate(
				to: FinishQuizToResultCoordinator(viewController: self)
			)
		}
	}

	// MARK:  - Load Data
	func loadQuiz(with quiz: Quiz) {
		// Extract the relevant data from the Quiz object
		let totalQuestions = quiz.results.count
		let result = quiz.results[questionAnswered - 1]
		let answers = result.incorrectAnswers + [result.correctAnswer]

		// Update the quiz view with the extracted data
		self.quizView.updateQuizView(
			questionAnswered: questionAnswered,
			total: totalQuestions,
			question: result.question,
			answers: answers
		)
	}

}
