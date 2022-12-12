//
//  QuizViewModelType.swift
//  QuizApp
//
//  Created by Alley Pereira on 12/12/22.
//

import Foundation
protocol QuizViewModelType: Coordinatable {
	var coordinator: QuizCoordinator? { get set }
}
