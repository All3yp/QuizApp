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
		label.textColor = .white
		label.font = UIFont.mainFont(ofSize: 30, withWeight: .bold)
		return label
	}()

	let trophyImageView: UIImageView = {
		let imgView = UIImageView()
		imgView.contentMode = .scaleAspectFit
		imgView.image = UIImage(named: "trophy")
		return imgView
	}()

	let congratsNameLabel: UILabel = {
		let label = UILabel()
		label.numberOfLines = 1
		label.text = "Congratulations!"
		label.textColor = .white
		label.font = UIFont.mainFont(ofSize: 30, withWeight: .bold)
		return label
	}()

	let yourScoreNameLabel: UILabel = {
		let label = UILabel()
		label.numberOfLines = 1
		label.text = "YOUR SCORE"
		label.textColor = .white
		label.font = UIFont.mainFont(ofSize: 20, withWeight: .light)
		return label
	}()

	let scoreLabel: UILabel = {
		let label = UILabel()
		label.numberOfLines = 1
		label.text = "10 / 10" // Debug View
		label.textColor = .white
		label.font = UIFont.mainFont(ofSize: 40, withWeight: .bold)
		return label
	}()

	let takeNewQuizButton: UIButton = {
		let bnt = UIButton(type: .system)
		bnt.setTitle("Take New Quiz", for: .normal)
		bnt.backgroundColor = UIColor.CustomColor.yellow
		bnt.setTitleColor(UIColor.CustomColor.dark, for: .normal)
		bnt.titleLabel?.font = UIFont.mainFont(ofSize: 20, withWeight: .light)
		return bnt
	}()

	override func didMoveToSuperview() {
		self.setupViewCode()
	}

}
