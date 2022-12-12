//
//  HomeViewCoordinator.swift
//  QuizApp
//
//  Created by Alley Pereira on 06/12/22.
//

import UIKit

final class HomeViewCoordinator: Coordinator {

	let viewController: UIViewController

	init(viewController: UIViewController) {
		self.viewController = viewController
	}

	func start() {
		let homeViewController = HomeViewController()
		homeViewController.modalPresentationStyle = .fullScreen
		homeViewController.coordinator = self
		viewController.present(homeViewController, animated: false)
	}
}
