//
//  QuizResultViewController.swift
//  QuizApp
//
//  Created by Alley Pereira on 04/12/22.
//

import UIKit

class QuizResultViewController: UIViewController {

	var coordinator: FinishQuizToResultCoordinator?

	private let quizResultView: QuizResultView = QuizResultView()

	override func loadView() {
		self.view = quizResultView
	}

	override func viewDidLoad() {
		super.viewDidLoad()
		self.view.backgroundColor = UIColor.CustomColor.dark

		self.quizResultView.didTapBntToTakeNewQuiz = { [weak self] in
			self?.coordinator?.dismiss()
		}
	}

}
