//
//  QuizDelegate.swift
//  QuizApp
//
//  Created by Alley Pereira on 13/12/22.
//

import Foundation

protocol QuizDelegate: AnyObject {
	func loadQuiz(with quiz: Quiz)
}
