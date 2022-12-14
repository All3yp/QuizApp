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

	private var questionAnswered: Int = 1
	private lazy var viewModel = QuizViewModel(delegate: self)


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
		let result = quiz.results[questionAnswered - 1]
		let answersViewModel = AnsweresViewModel(answer: result.incorrectAnswers + [result.correctAnswer], correctAnswer: result.correctAnswer)
		let answers = answersViewModel.answer.shuffled()

		// Update the quiz view with the extracted data
		updateQuizView(questionAnswered: questionAnswered, quiz: quiz, result: result, answers: answers)
	}

	func updateQuizView(questionAnswered: Int, quiz: Quiz, result: QuizResult, answers: [String]) {
		var answers = answers
		DispatchQueue.main.async { [self] in
			self.quizView.numberOfQuestionsLabel.text = "Question \(String(describing: questionAnswered)) of \(quiz.results.count)"
			self.quizView.questionLabel.text = result.question
			self.quizView.alternativeToAnswerBoardView01.answerAlternativeLabel.text = answers.popLast()
			self.quizView.alternativeToAnswerBoardView02.answerAlternativeLabel.text = answers.popLast()
			self.quizView.alternativeToAnswerBoardView03.answerAlternativeLabel.text = answers.popLast()
			self.quizView.alternativeToAnswerBoardView04.answerAlternativeLabel.text = answers.popLast()
		}
	}

}
