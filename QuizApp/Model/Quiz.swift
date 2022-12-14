//
//  Quiz.swift
//  QuizApp
//
//  Created by Alley Pereira on 11/12/22.
//

import Foundation

// MARK: - Quiz
struct Quiz: Codable {
		let responseCode: Int
		let results: [QuizResult]

		enum CodingKeys: String, CodingKey {
				case responseCode = "response_code"
				case results
		}
}

// MARK: - Result
struct QuizResult: Codable {
//		let category: String
//		let type: String
//		let difficulty: String
		let question, correctAnswer: String
		let incorrectAnswers: [String]

		enum CodingKeys: String, CodingKey {
				case question
				case correctAnswer = "correct_answer"
				case incorrectAnswers = "incorrect_answers"
		}
}
