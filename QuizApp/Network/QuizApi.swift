//
//  QuizApi.swift
//  QuizApp
//
//  Created by Alley Pereira on 11/12/22.
//

import Foundation

// MARK: - Protocols
protocol QuizApiService {
	func fetchQuestionsForComputerScience(_ completion: @escaping (Result<Quiz, ServiceError>) -> Void)
	func fetchQuestionsForRandomThemes(_ completion: @escaping (Result<Quiz, ServiceError>) -> Void)
}

// MARK: - FETCH API
struct QuizApi {

	private let serviceManager: QuizApiService

	init(serviceManager: QuizApiService = QuizServiceImplementation()) {
		self.serviceManager = serviceManager
	}

	func fetchQuestionsForComputerScience(_ completion: @escaping (Result<[QuizResult], ServiceError>) -> Void) {
		serviceManager.fetchQuestionsForComputerScience { result in
			switch result {
				case .success(let success):
					completion(success)
				case .failure(let failure):
					completion(failure)
			}
		}
	} //: FETCH

	func fetchQuestionsForRandomThemes(_ completion: @escaping (Result<[QuizResult], ServiceError>) -> Void) {
		serviceManager.fetchQuestionsForRandomThemes { result in
			switch result {
				case .success(let success):
					completion(success)
				case .failure(let failure):
					completion(failure)
			}
		}
	} //: FETCH

} //: STRUCT
