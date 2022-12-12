//
//  HomeView.swift
//  QuizApp
//
//  Created by Alley Pereira on 29/11/22.
//

import UIKit

class HomeView: UIView {

	var didTapBntStartQuiz: (() -> Void)?

	let titleLabel: UILabel = {
		let label = UILabel()
		label.text = "QuizApp"
		label.numberOfLines = 0
		label.textColor = .white
		label.font = UIFont.mainFont(ofSize: 35, withWeight: .light)
		return label
	}()

	 lazy var startButton: UIButton = {
		let bnt = UIButton(type: .system)
		 bnt.setTitle("Start", for: .normal)
		 bnt.backgroundColor = UIColor.CustomColor.yellow
		 bnt.setTitleColor(UIColor.CustomColor.dark, for: .normal)
		 bnt.titleLabel?.font = UIFont.mainFont(ofSize: 25, withWeight: .light)
		 bnt.addTarget(self, action: #selector(startQuizActionButtonPressed), for: .touchUpInside)
		return bnt
	}()

	// MARK: Lifecycle
	override func didMoveToSuperview() {
		super.didMoveToSuperview()
		self.setupViewCode()
	}

	// Actions
	@objc func startQuizActionButtonPressed(_ sender: UIButton) {
		didTapBntStartQuiz?()
	}
}
