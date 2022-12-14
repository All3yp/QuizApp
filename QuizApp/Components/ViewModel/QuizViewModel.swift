//
//  QuizViewModel.swift
//  QuizApp
//
//  Created by Alley Pereira on 12/12/22.
//

import UIKit

class QuizViewModel: ViewModelProtocol {

	var quizModel: Quiz?
	weak var delegate: QuizDelegate?
	var serviceAPI: QuizServiceImplementation

	init(
		serviceAPI: QuizServiceImplementation = QuizServiceImplementation(),
		quizModel: Quiz? = nil,
		delegate: QuizDelegate
	) {
		self.serviceAPI = serviceAPI
		self.quizModel = quizModel
		self.delegate = delegate
	}

	func loadQuizQuestionsForComputerScience() {
		serviceAPI.fetchQuestionsForComputerScience{ [weak self] result in
			switch result {
				case .success(let quiz):
					self?.quizModel = quiz
					self?.delegate?.loadQuiz(with: quiz)
				case .failure(let error):
					print(error)
			}
		} //: FETCH
	} //: LOAD

}
