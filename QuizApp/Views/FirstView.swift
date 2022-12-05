//
//  FirstView.swift
//  QuizApp
//
//  Created by Alley Pereira on 29/11/22.
//

import UIKit

class FirstView: UIView {

	let titleLabel: UILabel = {
		let label = UILabel()
		label.text = "QuizApp"
		label.numberOfLines = 0
		label.textColor = .white
		label.font = UIFont.mainFont(ofSize: 35, withWeight: .light)
		return label
	}()

	 let startButton: UIButton = {
		let bnt = UIButton(type: .system)
		 bnt.setTitle("Start", for: .normal)
		 bnt.backgroundColor = UIColor.CustomColor.yellow
		 bnt.setTitleColor(UIColor.CustomColor.dark, for: .normal)
		 bnt.titleLabel?.font = UIFont.mainFont(ofSize: 25, withWeight: .light)
		return bnt
	}()

	// MARK: Lifecycle
	override func didMoveToSuperview() {
		super.didMoveToSuperview()
		self.setupViewCode()
	}
}
