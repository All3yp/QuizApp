//
//  FirstViewCoordinator.swift
//  QuizApp
//
//  Created by Alley Pereira on 06/12/22.
//

import UIKit

final class FirstViewCoordinator: Coordinator {

	let viewController: UIViewController

	init(viewController: UIViewController) {
		self.viewController = viewController
	}

	func start() {
		let firstViewController = FirstViewController()
		firstViewController.modalPresentationStyle = .fullScreen
		firstViewController.coordinator = self
		viewController.present(firstViewController, animated: false)
	}
}
