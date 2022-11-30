//
//  ViewController.swift
//  QuizApp
//
//  Created by Alley Pereira on 29/11/22.
//

import UIKit

class FirstViewController: UIViewController {

	private let firstView: FirstView = FirstView()

	override func viewDidLoad() {
		super.viewDidLoad()

		self.view.backgroundColor = UIColor.CustomColor.dark
	}

	override func loadView() {
		super.loadView()
		self.view = firstView
	}
}
