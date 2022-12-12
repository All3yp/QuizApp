//
//  QuizServiceImplementation.swift
//  QuizApp
//
//  Created by Alley Pereira on 11/12/22.
//

import Foundation

final class QuizServiceImplementation: QuizApiService {

	private let networkDataSource: NetworkManager

	init(networkDataSource: NetworkManager = NetworkManagerService()) {
		self.networkDataSource = networkDataSource
	}

	func fetchQuestionsForComputerScience(_ completion: @escaping (Result<Quiz, ServiceError>) -> Void) {
		networkDataSource.get(request: Router.computerScience.getRequest) { result in
			switch result {
				case .success(let data):
					do {
						let json = try JSONDecoder().decode(Quiz.self, from: data)
						completion(.success(json))
					} catch {
						completion(.failure(.decodeError))
					}
				case .failure(let error):
					completion(.failure(error))
			}
		}
	} //: FETCH

	func fetchQuestionsForRandomThemes(_ completion: @escaping (Result<Quiz, ServiceError>) -> Void) {
		networkDataSource.get(request: Router.random.getRequest) { result in
			switch result {
				case .success(let data):
					do {
						let json = try JSONDecoder().decode(Quiz.self, from: data)
						completion(.success(json))
					} catch {
						completion(.failure(.decodeError))
					}
				case .failure(let error):
					completion(.failure(error))
			}
		}
	} //: FETCH
}
