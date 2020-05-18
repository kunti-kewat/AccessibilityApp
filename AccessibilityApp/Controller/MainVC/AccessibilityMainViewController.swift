//
//  AccessibilityViewController.swift
//  AccessibilityApp
//
//  Created by Meenal on 16/05/20.
//  Copyright © 2020 apple. All rights reserved.
//

import UIKit

class AccessibilityMainViewController: UIViewController {

    @IBOutlet weak var accessibilityListview: UITableView!
    fileprivate let vm = AccessibilityOptionsVM()
    override func viewDidLoad() {
        super.viewDidLoad()
        registerXib()
    }
    
    func registerXib(){
        AccessibilityTableViewCell.registerXib(with: accessibilityListview)
    }
    
}

// MARK:- EXTENTION
// UITableViewDataSource
extension AccessibilityMainViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return vm.buildAccessibilityOptionas().options.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: AccessibilityTableViewCell = tableView.dequeueReusableCell(withIdentifier: "accessibilityCell", for: indexPath) as! AccessibilityTableViewCell
        let options = vm.buildAccessibilityOptionas().options
        let values = vm.buildAccessibilityOptionas().values
        cell.configireCellWith(optionName: options[indexPath.row], value: values[indexPath.row])
        return cell
    }
}

//UITableViewDelegate
extension AccessibilityMainViewController: UITableViewDelegate{
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let options = vm.buildAccessibilityOptionas().options
        switch options[indexPath.row] {
        case "Smart Invert":
            AccessibilityWireFrame.naviagteToSmartInvert(self)
        case "Language":
            AccessibilityWireFrame.naviagteToLanguage(self)
        case "Dynamic Type":
            AccessibilityWireFrame.naviagteToDynamicType(self)
        case "Custom Action":
            AccessibilityWireFrame.naviagteToCustomAction(self)
        case "On/Off Labels":
            AccessibilityWireFrame.naviagteToOnOffLabel(self)
        case "Reduce Transparency":
            AccessibilityWireFrame.naviagteToReduceTransparency(self)
        default:
            print("no value")
        }
    }
}



