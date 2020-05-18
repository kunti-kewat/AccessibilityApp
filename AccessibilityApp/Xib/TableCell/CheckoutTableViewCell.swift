//
//  CheckoutTableViewCell.swift
//  TestAccessibilityApp
//
//  Created by user167484 on 5/13/20.
//  Copyright © 2020 Allen Savio. All rights reserved.
//

import UIKit

class CheckoutTableViewCell: UITableViewCell {
    @IBOutlet weak var checkoutButton: UIButton!
    
    @IBOutlet weak var checkOutLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
