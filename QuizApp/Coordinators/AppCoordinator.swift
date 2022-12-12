//
//  AppCoordinator.swift
//  QuizApp
//
//  Created by Alley Pereira on 05/12/22.
//

import UIKit

final class AppCoordinator: Coordinator {

	let window: UIWindow
	let viewController = UIViewController()

	init(window: UIWindow) {
		self.window = window
	}

	func start() {
		window.rootViewController = viewController
		window.makeKeyAndVisible()

		coordinate(to: HomeCoordinator(viewController: viewController))
	}
}
