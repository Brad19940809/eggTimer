//
//  Preferences.swift
//  eggTimer
//
//  Created by brad on 5/8/20.
//  Copyright © 2020 brad. All rights reserved.
//

import Foundation

struct Preferences {

    // 1
    var selectedTime: TimeInterval {
    get {
        // 2
        let savedTime = UserDefaults.standard.double(forKey: "selectedTime")
            if savedTime > 0 {
                return savedTime
            }
            // 3
            return 360
        }
        set {
            // 4
            UserDefaults.standard.set(newValue, forKey: "selectedTime")
        }
    }

}
