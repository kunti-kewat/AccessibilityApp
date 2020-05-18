//
//  AccessibilityTableViewCell.swift
//  AccessibilityApp
//
//  Created by Meenal on 16/05/20.
//  Copyright © 2020 apple. All rights reserved.
//

import UIKit

class AccessibilityTableViewCell: UITableViewCell {
    @IBOutlet weak var optionLbl: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func configireCellWith(optionName: String, value: String){
        self.optionLbl.isAccessibilityElement = true
       // self.optionLbl
         self.optionLbl.accessibilityValue = value
        self.optionLbl.text = optionName
       
    }
    
    
    static func registerXib(with tableview: UITableView){
        let nib = UINib(nibName: String(describing: self), bundle: nil)
        tableview.register(nib, forCellReuseIdentifier: "accessibilityCell")
    }
    
}
