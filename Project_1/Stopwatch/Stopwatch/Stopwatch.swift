//  -------------------------------------------------------
//              Stopwatch.swift  -  Stopwatch
//  -------------------------------------------------------
//
//  Copyright © 2020 Computer House. All rights reserved.
//

import Foundation

class Stopwatch {
    
    private var startTime: Date?
    var elapsedTimeTemp: TimeInterval?
    
    var elapsedTime: TimeInterval {
        if let startTime = self.startTime {
            if let elapsed = elapsedTimeTemp {
                return -startTime.timeIntervalSinceNow + elapsed
            } else {
                return -startTime.timeIntervalSinceNow
            }
        } else {
            return 0
        }
    }
    
    var isRunning: Bool {
        return startTime != nil
    }
    
    func start() {
        startTime = Date()
    }
    
    func stop() {
        elapsedTimeTemp = nil
        startTime = nil
    }
    
    func pause() {
        elapsedTimeTemp = elapsedTime
        startTime = nil
    }
    
}

