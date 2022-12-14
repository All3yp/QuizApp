//
//  TimerProtocol.swift
//  QuizApp
//
//  Created by Alley Pereira on 14/12/22.
//

import Foundation

protocol TimerProtocol: AnyObject {
	func timeRemainingOnTimer(_ timer: ClockTimer, timeRemaining: TimeInterval)
	func timerHasFinished(_ timer: ClockTimer)
}

class ClockTimer {

	var timer: Timer? = nil
	var startTime: Date?
	var duration: TimeInterval = 60
	var elapsedTime: TimeInterval = 0
	var delegate: TimerProtocol?

	func startTimer() {
		startTime = Date()
		timer = Timer.scheduledTimer(
			timeInterval: 0.1,
			target: self,
			selector: #selector(updateTimer),
			userInfo: nil,
			repeats: true)
	}

	func stopTimer() {
		timer?.invalidate()
		timer = nil
	}

	@objc func updateTimer() {
		guard let startTime = startTime else { return }
		elapsedTime = Date().timeIntervalSince(startTime)
		let timeRemaining = duration - elapsedTime
		delegate?.timeRemainingOnTimer(self, timeRemaining: timeRemaining)
		if timeRemaining <= 0 {
			stopTimer()
			delegate?.timerHasFinished(self)
		}
	}
}
