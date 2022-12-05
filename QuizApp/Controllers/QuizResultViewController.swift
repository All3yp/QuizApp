//
//  QuizResultViewController.swift
//  QuizApp
//
//  Created by Alley Pereira on 04/12/22.
//

import UIKit

class QuizResultViewController: UIViewController {

	private let quizResultView: QuizResultView = QuizResultView()

	override func loadView() {
		self.view = quizResultView
	}

    override func viewDidLoad() {
        super.viewDidLoad()
		self.view.backgroundColor = UIColor.CustomColor.dark
    }

}
