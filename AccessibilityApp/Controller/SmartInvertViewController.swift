//
//  SmartInvertViewController.swift
//  AccessibilityApp
//
//  Created by Meenal on 16/05/20.
//  Copyright © 2020 apple. All rights reserved.
//

import UIKit

class SmartInvertViewController: UIViewController {

     @IBOutlet weak var clickMeBtn: UIButton!
      @IBOutlet weak var msgLbl: UILabel!
      @IBOutlet weak var birdsImage: UIImageView!
      override func viewDidLoad() {
          super.viewDidLoad()
          // Do any additional setup after loading the view.
          birdsImage.accessibilityIgnoresInvertColors = true
          msgLbl.adjustsFontForContentSizeCategory = true
          msgLbl.accessibilityHint = "Waiting for angry bird"
          msgLbl.accessibilityValue = "fly high"
          msgLbl.accessibilityIgnoresInvertColors = false
        
          
          UIAccessibility.requestGuidedAccessSession(enabled: false){
              success in
              print("Request guided access success \(success)")
          }
      }

}
