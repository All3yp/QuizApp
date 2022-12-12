//
//  ViewController.swift
//  QuizApp
//
//  Created by Alley Pereira on 29/11/22.
//

import UIKit

class HomeViewController: UIViewController {

	var coordinator: HomeViewCoordinator?

	private let homeView: HomeView = HomeView()

	override func loadView() {
		super.loadView()
		self.view = homeView
	}

	override func viewDidLoad() {
		super.viewDidLoad()

		self.view.backgroundColor = UIColor.CustomColor.dark
		goToQuizView()
	}

	private func goToQuizView() {
		self.homeView.didTapBntStartQuiz = { [weak self] in
			guard let self else { return }
			self.coordinator?.coordinate(to: QuizCoordinator(viewController: self))
		}
	}
}
