//
//  Router.swift
//  QuizApp
//
//  Created by Alley Pereira on 11/12/22.
//

import Foundation

enum Router {

	/// Create new cases for more requests
	case computerScience
	case random
//	case videoGames
//	case music

	static private let baseURL: String = "https://run.mocky.io/v3"

	var url: URL {
		URL(string: Self.baseURL+self.path)!
	}

	// MARK: - Paths
	private var path: String {
		switch self {
			case .computerScience:
				return "/cf1667f7-b872-44de-a753-fb1c87baa98e"
			case .random:
				return "/825a9b94-d2e9-47ce-817d-65844f3582d8"
		}
	}

	// MARK: - HTTP Methods
	var getRequest: URLRequest {
		var request = URLRequest(url: self.url)
		request.httpMethod = "GET"
		return request
	}
}
