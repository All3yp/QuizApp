//
//  AlternativeToAnswerView.swift
//  QuizApp
//
//  Created by Alley Pereira on 02/12/22.
//

import UIKit

class AlternativeToAnswerView: UIView {

	lazy var retangularBoardLayer: CAShapeLayer = {
		let layer = CAShapeLayer()
		layer.borderWidth = 2
		layer.cornerRadius = 10
		layer.masksToBounds = false
		layer.borderColor = UIColor.white.cgColor
		layer.backgroundColor = UIColor.clear.cgColor
		return layer
	}()

	lazy var numberAlternativeLabel: UILabel = {
		let label = UILabel()
		label.numberOfLines = 1
		label.textColor = .white
		label.font = UIFont.mainFont(ofSize: 20)
		return label
	}()

	lazy var lineView: UIView = UIView()

	lazy var answerAlternativeLabel: UILabel = {
		let label = UILabel()
		label.numberOfLines = 1
		label.textColor = .white
		label.font = UIFont.mainFont(ofSize: 19)
		return label
	}()

	let rightOrWrongIconImageView: UIImageView = {
		let imgView = UIImageView()
		let font = UIFont.systemFont(ofSize: 18)
		let config = UIImage.SymbolConfiguration(font: font)
		imgView.contentMode = .scaleAspectFit
//		imgView.isHidden = true
		return imgView
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
		self.setupViewCode()
		configurateLayer()
		textForDebug()
	}

	private func configurateLayer() {
		retangularBoardLayer.frame = self.bounds
	}

	// MARK: DEBUG
	private func textForDebug() {
		numberAlternativeLabel.text = "A"
		numberAlternativeLabel.tintColor = .white

		answerAlternativeLabel.tintColor = .white
		answerAlternativeLabel.text = "Lore Ipsum siamet"

		rightOrWrongIconImageView.image = UIImage(systemName: "x.circle.fill")
		rightOrWrongIconImageView.tintColor = .red

		lineView.backgroundColor = .white
	}

}
