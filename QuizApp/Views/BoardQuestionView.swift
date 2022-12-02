//
//  BoardQuestionView.swift
//  QuizApp
//
//  Created by Alley Pereira on 02/12/22.
//

import UIKit

class BoardQuestionView: UIView {

	lazy var retangularBoardLayer: CAShapeLayer = {
		let layer = CAShapeLayer()
		layer.backgroundColor = UIColor.CustomColor.gray.cgColor
		layer.borderWidth = 3
		layer.cornerRadius = 10
		layer.masksToBounds = false
		layer.borderColor = UIColor.white.cgColor
		return layer
	}()

	// MARK: Lifecycle
	override init(frame: CGRect) {
		super.init(frame: frame)
		layer.addSublayer(retangularBoardLayer)
	}

	required init?(coder: NSCoder) {
		fatalError("init(coder:) has not been implemented")
	}

	override func layoutSubviews() {
		super.layoutSubviews()
		configurateLayer()
	}

	private func configurateLayer() {
		retangularBoardLayer.frame = self.bounds
	}

}
