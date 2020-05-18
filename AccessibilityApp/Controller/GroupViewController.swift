//
//  GroupViewController.swift
//  TestAccessibilityApp
//
//  Created by user167484 on 5/13/20.
//  Copyright © 2020 Allen Savio. All rights reserved.
//

import UIKit

class GroupViewController: UIViewController {

    @IBOutlet weak var firstView: UIView!
    @IBOutlet weak var secondView: UIView!
    
    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var label2: UILabel!
    @IBOutlet weak var label3: UILabel!
    
    
    @IBOutlet weak var label4: UILabel!
    @IBOutlet weak var label5: UILabel!
    @IBOutlet weak var label6: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        firstView.shouldGroupAccessibilityChildren = true
        secondView.shouldGroupAccessibilityChildren = true
        
        
        label1.accessibilityLanguage = "hi"
        label2.accessibilityLanguage = "en"
        label3.accessibilityLanguage = "zh-Hans"
        label4.accessibilityLanguage = "es"
        label5.accessibilityLanguage = "fr"
        label6.accessibilityLanguage = "ar"
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
