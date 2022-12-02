//
//  QuizViewController.swift
//  QuizApp
//
//  Created by Alley Pereira on 02/12/22.
//

import UIKit

class QuizViewController: UIViewController {

	private let quizView: QuizView = QuizView()

	override func loadView() {
		self.view = quizView
	}

    override func viewDidLoad() {
        super.viewDidLoad()
		self.view.backgroundColor = UIColor.CustomColor.dark
    }

}
