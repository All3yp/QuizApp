//
//  FinishQuizToResultCoordinator.swift
//  QuizApp
//
//  Created by Alley Pereira on 05/12/22.
//

import UIKit

final class FinishQuizToResultCoordinator: Coordinator {

	let viewController: UIViewController

	init(viewController: UIViewController) {
		self.viewController = viewController
	}

	func start() {
		let showResultViewController = QuizResultViewController()
		showResultViewController.coordinator = self
		viewController.navigationController?.pushViewController(showResultViewController, animated: true)
	}

	func dismiss(animated: Bool = true, completion: (() -> Void)? = nil) {
		viewController.navigationController?.dismiss(animated: animated, completion: completion)
	}
}
