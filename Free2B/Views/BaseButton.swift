//
//  BaseButton.swift
//  Free2B
//
//  Created by Emanuel  Guerrero on 11/11/17.
//  Copyright © 2017 SilverLogic, LLC. All rights reserved.
//

import UIKit

/**
    A base class for having subclasses of
    `UIButton`. It also defines and sets
    default attributes for an instance.
*/
@IBDesignable class BaseButton: UIButton {
    
    // MARK: - IBInspectable
    @IBInspectable var cornerRadius: CGFloat = 4 {
        didSet {
            setNeedsLayout()
        }
    }
    @IBInspectable var borderWidth: CGFloat = 0 {
        didSet {
            setNeedsLayout()
        }
    }
    @IBInspectable var borderColor: UIColor = .clear {
        didSet {
            setNeedsLayout()
        }
    }
    @IBInspectable var hasShadow: Bool = false {
        didSet {
            setNeedsLayout()
        }
    }
    @IBInspectable var isDefaultButton: Bool = false {
        didSet {
            setNeedsLayout()
        }
    }
    
    
    // MARK: - Lifecycle
    override func layoutSubviews() {
        super.layoutSubviews()
        updateShadow()
        updateLayer()
    }
}


// MARK: - Private Instance Methods
fileprivate extension BaseButton {
    
    /// Adds shadow for button.
    func updateShadow() {
        guard hasShadow || isDefaultButton else {
            layer.shadowRadius = 0
            layer.shadowOpacity = 0
            layer.shadowOffset = CGSize.zero
            layer.shadowColor = nil
            return
        }
        backgroundColor = .clear
        layer.backgroundColor = UIColor.secondary.cgColor
        layer.shadowOffset = CGSize(width: 0.0, height: 2.0)
        layer.shadowColor = UIColor.black.cgColor
        layer.shadowOpacity = 0.8
        layer.shadowRadius = 1.5
    }
    
    /// Updates button layes with necessary attributes.
    func updateLayer() {
        layer.cornerRadius = cornerRadius
        layer.borderWidth = borderWidth
        layer.borderColor = borderColor.cgColor
    }
}
