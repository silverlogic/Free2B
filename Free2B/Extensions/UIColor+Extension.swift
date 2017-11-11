//
//  UIColor+Extension.swift
//  Free2B
//
//  Created by Emanuel  Guerrero on 11/11/17.
//  Copyright © 2017 SilverLogic, LLC. All rights reserved.
//

import UIKit

// MARK: - Private Class Methods
fileprivate extension UIColor {
    
    /**
        Gets the color from a given hexidecimal value.
     
        - Parameters:
            - hexValue: An `UInt` representing the hexidecimal value.
            - alpha: A `Float` representing how much alpha to apply.
                     Default value is 1.0.
     
            - Returns: An `UIColor` object containing the color generated from `hexValue`.
    */
    fileprivate static func colorFromHexValue(_ hexValue: UInt, alpha: CGFloat = 1.0) -> UIColor {
        let redValue = CGFloat(((Float)((hexValue & 0xFF0000) >> 16)) / 255.0)
        let greenValue = CGFloat(((Float)((hexValue & 0xFF00) >> 8)) / 255.0)
        let blueValue = CGFloat(((Float)(hexValue & 0xFF)) / 255.0)
        return UIColor(red: redValue, green: greenValue, blue: blueValue, alpha: alpha)
    }
}


// MARK: - Application Colors
extension UIColor {
    
    /// Main color used in the application.
    static var main: UIColor { return colorFromHexValue(mainHexValue) }
    
    /// Secondary color used in the application.
    static var secondary: UIColor { return colorFromHexValue(secondaryHexValue) }
    
    /// Teritary color used in the application.
    static var teritary: UIColor { return colorFromHexValue(teritaryHexValue) }
    
    /// Additional colors used in the application.
    static var buttonShadow: UIColor { return colorFromHexValue(buttonShadowHexValue) }
}


// MARK: - Hex Value Constants
extension UIColor {
    @nonobjc static var mainHexValue: UInt = 0x25799C
    @nonobjc static var secondaryHexValue: UInt = 0xFF8672
    @nonobjc static var teritaryHexValue: UInt = 0xFFFFFF
    @nonobjc static var buttonShadowHexValue: UInt = 0x4091CF
}
