//
//  CoordinatorProtocol.swift
//  QuizApp
//
//  Created by Alley Pereira on 05/12/22.
//

import UIKit

protocol Coordinator {
	func start()
	func coordinate(to coordinator: Coordinator)
}

extension Coordinator {
	func coordinate(to coordinator: Coordinator) {
		coordinator.start()
	}
}
