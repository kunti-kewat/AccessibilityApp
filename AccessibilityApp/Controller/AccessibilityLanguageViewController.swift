//
//  AccessibilityLanguageViewController.swift
//  AccessibilityApp
//
//  Created by Meenal on 16/05/20.
//  Copyright © 2020 apple. All rights reserved.
//

import UIKit

class AccessibilityLanguageViewController: UIViewController {
     @IBOutlet weak var imageView: UIImageView!
        @IBOutlet weak var textlabel: UILabel!
        override func viewDidLoad() {
            super.viewDidLoad()
            // Do any additional setup after loading the view.
//            guard let customFont = UIFont(name: "GrandHotel-Regular", size: UIFont.labelFontSize) else {
//                fatalError("""
//                    Failed to load the "GrandHotel-Regular" font.
//                    Make sure the font file is included in the project and the font name is spelled correctly.
//                    """
//                )
//            }
    //        textlabel.font = customFont
          //  textlabel.font = UIFontMetrics.default.scaledFont(for: customFont)
    //        textlabel.font = .preferredFont(forTextStyle: .headline)
    //        textlabel.adjustsFontForContentSizeCategory = true

            // UIImageView
    //        imageView.adjustsImageSizeForAccessibilityContentSizeCategory = true
            imageView.accessibilityIgnoresInvertColors = true
        }

}
