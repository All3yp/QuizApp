//
//  QuizCoordinator.swift
//  QuizApp
//
//  Created by Alley Pereira on 05/12/22.
//

import UIKit

final class QuizCoordinator: Coordinator {

	let viewController: UIViewController

	init(viewController: UIViewController) {
		self.viewController = viewController
	}

	func start() {
		let quizViewController = QuizViewController()
		quizViewController.coordinator = self
		let nav = UINavigationController(rootViewController: quizViewController)
		nav.modalPresentationStyle = .fullScreen
		viewController.present(nav, animated: true)
		quizViewController.navigationController?.isNavigationBarHidden = true
	}
}
