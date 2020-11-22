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
    
    @IBAction func startTimer() {
        timer.setDate(Date())
        timer.start()
    }
    
    @IBAction func stopTimer() {
        timer.stop()
    }
}
