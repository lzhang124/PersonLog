//
//  Settings.swift
//  PersonLog
//
//  Created by Yasyf Mohamedali on 2015-03-17.
//  Copyright (c) 2015 Yasyf Mohamedali. All rights reserved.
//

import Foundation

class Settings {
    let defaults = NSUserDefaults.standardUserDefaults()
    func _string(key: String) -> String? {
        return defaults.stringForKey(key)
    }
    func name() -> String? {
        return _string("name")
    }
    func uuid() -> String? {
        return _string("uuid")
    }
    func facebookID() -> String? {
        return _string("fb_id")
    }
    
    func isLoggedIn() -> Bool {
        return facebookID() != nil
    }
}