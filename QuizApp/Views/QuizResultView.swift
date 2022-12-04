//
//  QuizResultView.swift
//  QuizApp
//
//  Created by Alley Pereira on 04/12/22.
//

import UIKit

class QuizResultView: UIView {

	let quizResultTitleLabel: UILabel = {
		let label = UILabel()
		label.numberOfLines = 1
		label.text = "Quiz result"
		label.font = UIFont.mainFont(ofSize: 30, withWeight: .bold)
		return label
	}()
}
