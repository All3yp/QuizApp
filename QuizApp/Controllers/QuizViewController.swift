//
//  QuizViewController.swift
//  QuizApp
//
//  Created by Alley Pereira on 02/12/22.
//

import UIKit

class QuizViewController: UIViewController {

	var coordinator: QuizCoordinator?

	private let quizView: QuizView = QuizView()

	override func loadView() {
		self.view = quizView
	}

	override func viewDidLoad() {
		super.viewDidLoad()
		self.view.backgroundColor = UIColor.CustomColor.dark
		goToFinalResult()
	}

	private func goToFinalResult() {
		self.quizView.didTapBntToFinishQuiz = { [weak self] in
			guard let self else { return }
			self.coordinator?.coordinate(to: FinishQuizToResultCoordinator(viewController: self))
		}
	}
	
}
