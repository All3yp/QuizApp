//
//  ViewModelProtocol.swift
//  QuizApp
//
//  Created by Alley Pereira on 13/12/22.
//

import Foundation

protocol ViewModelProtocol: AnyObject {
	var serviceAPI: QuizServiceImplementation { get set }
	var delegate: QuizDelegate? { get set }
	var quizModel: Quiz? { get set }
}
