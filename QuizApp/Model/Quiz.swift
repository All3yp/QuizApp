//
//  Quiz.swift
//  QuizApp
//
//  Created by Alley Pereira on 11/12/22.
//

import Foundation

// MARK: - Quiz
struct Quiz: Codable {
		let results: [QuizResult]
}

// MARK: - QuizResult
struct QuizResult: Codable {
		let category: String
		let question, correctAnswer: String
		let incorrectAnswers: [String]

		enum CodingKeys: String, CodingKey {
				case category, type, difficulty, question
				case correctAnswer = "correct_answer"
				case incorrectAnswers = "incorrect_answers"
		}
}
