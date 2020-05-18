//
//  AccessibilityWireFrame.swift
//  AccessibilityApp
//
//  Created by Meenal on 16/05/20.
//  Copyright © 2020 apple. All rights reserved.
//

import UIKit

class AccessibilityWireFrame: NSObject {
    //smartInvertVC
 class func naviagteToSmartInvert(_ viewController:UIViewController) -> Void{
        let storyboard = UIStoryboard(name: "SmartInvert", bundle: nil)
            let smartVC = storyboard.instantiateViewController(withIdentifier: "smartInvertVC") as? SmartInvertViewController
    viewController.navigationController?.pushViewController(smartVC!, animated: true)
    }
    
    //accessibilityLanguageVC
    class func naviagteToLanguage(_ viewController:UIViewController) -> Void{
           let storyboard = UIStoryboard(name: "Language", bundle: nil)
               let languageVC = storyboard.instantiateViewController(withIdentifier: "accessibilityLanguageVC") as? AccessibilityLanguageViewController
       viewController.navigationController?.pushViewController(languageVC!, animated: true)
       }
    
    //dynamicTypeVC
    class func naviagteToDynamicType(_ viewController:UIViewController) -> Void{
              let storyboard = UIStoryboard(name: "Main", bundle: nil)
                  let dynamicTypeVC = storyboard.instantiateViewController(withIdentifier: "dynamicTypeVC") as? DynamicTypeViewController
          viewController.navigationController?.pushViewController(dynamicTypeVC!, animated: true)
          }
    
    //ampDetailsVC
    class func naviagteToCustomAction(_ viewController:UIViewController) -> Void{
                 let storyboard = UIStoryboard(name: "CustomAction", bundle: nil)
                     let customTypeVC = storyboard.instantiateViewController(withIdentifier: "ampDetailsVC") as? AmpDetailsViewController
             viewController.navigationController?.pushViewController(customTypeVC!, animated: true)
             }
    
    //onOffLabelVC
    class func naviagteToOnOffLabel(_ viewController:UIViewController) -> Void{
                   let storyboard = UIStoryboard(name: "SmartInvert", bundle: nil)
                       let onOffVC = storyboard.instantiateViewController(withIdentifier: "onOffLabelVC") as? OnOffLabelViewController
               viewController.navigationController?.pushViewController(onOffVC!, animated: true)
               }
    //reduceTransparencyVC
    class func naviagteToReduceTransparency(_ viewController:UIViewController) -> Void{
                    let storyboard = UIStoryboard(name: "Main", bundle: nil)
                        let reduceTransparencyVC = storyboard.instantiateViewController(withIdentifier: "reduceTransparencyVC") as? ReduceTransparencyViewController
                viewController.navigationController?.pushViewController(reduceTransparencyVC!, animated: true)
                }
}
