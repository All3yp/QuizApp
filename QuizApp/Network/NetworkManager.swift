//
//  NetworkManager.swift
//  QuizApp
//
//  Created by Alley Pereira on 11/12/22.
//

import Foundation

// MARK: - Protocols
protocol NetworkManager {
		var session: URLSession { get }
		func get(request: URLRequest, completion: @escaping(Result<Data, ServiceError>) -> Void)
}

// MARK: - Implementations
final class NetworkManagerService: NetworkManager {

	let session: URLSession
	private var dataTask: URLSessionTask?

	init(_ session: URLSession = .shared) {
			self.session = session
	}

	deinit {
		dataTask?.cancel()
	}

	func get(request: URLRequest, completion: @escaping(Result<Data, ServiceError>) -> Void) {

		dataTask = session.dataTask(with: request) { data, response, error in

			if let error = error {
				completion(.failure(.requestFailed(description: error.localizedDescription)))
				return
			}

			guard let data = data, !data.isEmpty else {
				completion(.failure(.emptyData))
				return
			}

			completion(.success(data))
		}
		dataTask?.resume()
	} //: GET
}
