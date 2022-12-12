//
//  HomeViewModelType.swift
//  QuizApp
//
//  Created by Alley Pereira on 12/12/22.
//

import Foundation

protocol HomeViewModelType: Coordinatable {
	var coordinator: HomeCoordinator? { get set }
}
