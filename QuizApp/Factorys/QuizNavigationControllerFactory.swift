//
//  QuizNavigationControllerFactory.swift
//  QuizApp
//
//  Created by Alley Pereira on 29/11/22.
//

import UIKit

final class QuizNavigationControllerFactory {

	static func make() -> QuizNavigationController {
		let navigationController = QuizNavigationController()
		let viewController = QuizViewController()
		navigationController.viewControllers = [viewController]
		return navigationController
	}
}

class QuizNavigationController: UINavigationController { }
