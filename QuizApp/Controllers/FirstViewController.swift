//
//  ViewController.swift
//  QuizApp
//
//  Created by Alley Pereira on 29/11/22.
//

import UIKit

class FirstViewController: UIViewController {

	var coordinator: FirstViewCoordinator?

	private let firstView: FirstView = FirstView()

	override func loadView() {
		super.loadView()
		self.view = firstView
	}

	override func viewDidLoad() {
		super.viewDidLoad()

		self.view.backgroundColor = UIColor.CustomColor.dark
		goToQuizView()
	}

	private func goToQuizView() {
		self.firstView.didTapBntStartQuiz = { [weak self] in
			guard let self else { return }
			self.coordinator?.coordinate(to: QuizCoordinator(viewController: self))
		}
	}
}
