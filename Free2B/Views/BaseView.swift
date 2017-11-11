//
//  BaseView.swift
//  Free2B
//
//  Created by Emanuel  Guerrero on 11/11/17.
//  Copyright © 2017 SilverLogic, LLC. All rights reserved.
//

import UIKit

/**
    A base class for having subclasses
    of `UIView`. It also defines and
    sets default attributes for an instance.
*/
@IBDesignable class BaseView: UIView {
    
    // MARK: - Lifecycle
    override func draw(_ rect: CGRect) {
        super.draw(rect)
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        updateLayer()
        updateShadows()
    }
    
    
    // MARK: - IBInspectable
    @IBInspectable var cornerRadius: CGFloat = 0 {
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
}


// MARK: - Private Instance Methods
fileprivate extension BaseView {
    
    /// Adds shadow for view.
    func updateShadows() {
        if !hasShadow {
            layer.shadowRadius = 0
            layer.shadowOpacity = 0
            layer.shadowOffset = CGSize.zero
            layer.shadowColor = nil
            return
        }
        backgroundColor = .clear
        layer.backgroundColor = UIColor.main.cgColor
        layer.shadowOffset = CGSize(width: 2.0, height: 2.0)
        layer.shadowColor = UIColor.black.cgColor
        layer.shadowOpacity = 0.6
        layer.shadowRadius = 5.0
    }
    
    /// Updates view layes with necessary attributes.
    func updateLayer() {
        layer.cornerRadius = cornerRadius
        layer.borderWidth = borderWidth
        layer.borderColor = borderColor.cgColor
    }
}
