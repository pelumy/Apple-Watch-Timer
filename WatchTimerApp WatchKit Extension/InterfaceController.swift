//
//  InterfaceController.swift
//  WatchTimerApp WatchKit Extension
//
//  Created by mac on 22/11/2020.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {

    @IBOutlet weak var timer: WKInterfaceTimer!
    @IBOutlet weak var timerActionButton: WKInterfaceButton!
    
    var isTimerStarted = false
    var startTime = Date()
    var elapsedTime: TimeInterval = 0.0
    
    
    override func awake(withContext context: Any?) {
        // Configure interface objects here.
    }
    
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
        
    }
    
    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
    }
    
    
    @IBAction func timerButtonAction() {
        isTimerStarted = !isTimerStarted
        if isTimerStarted {
            startTime = Date()
            timerActionButton.setTitle("STOP")
            timer.setDate(Date(timeIntervalSinceNow: elapsedTime))
            timer.start()
        } else {
            let stoppedTime = Date()
            elapsedTime -= stoppedTime.timeIntervalSince(startTime)
            timerActionButton.setTitle("START")
            timer.stop()
        }
    }
    
    
    @IBAction func resetTimer() {
        isTimerStarted = false
        startTime = Date()
        timerActionButton.setTitle("START")
        timer.setDate(startTime)
        timer.stop()
    }
    
}
