//
//  AccessibilityOptionsVM.swift
//  AccessibilityApp
//
//  Created by Meenal on 16/05/20.
//  Copyright © 2020 apple. All rights reserved.
//

import Foundation

class AccessibilityOptionsVM:NSObject{
    override init() {
        super.init()
    }
    
    func buildAccessibilityOptionas() -> AccessibilityOptions{
        return AccessibilityOptions(options: ["Smart Invert","Language","Dynamic Type","Custom Action", "On/Off Labels","Reduce Transparency"], values: ["Which will invert the color of display", "The language in which to speak the accessibility element's label, value, and hint." ,"Increase Font size dynamicaly", "", "allow you to turn a feature on or off", ""
])
    }
    
}
