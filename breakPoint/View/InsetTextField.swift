//
//  InsetTextField.swift
//  breakPoint
//
//  Created by MacBook Pro on 7/28/19.
//  Copyright © 2019 MacBook Pro. All rights reserved.
//

import UIKit

@IBDesignable

class InsetTextField: UITextField {
    
    
//    private var textRectOffset: CGFloat = 20
    private var padding = UIEdgeInsets(top: 0, left: 20, bottom: 0, right: 0)
    
    
    override func awakeFromNib() {
        let placeholder = NSAttributedString(string: self.placeholder!, attributes: [NSAttributedString.Key.foregroundColor : #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)])
        self.attributedPlaceholder = placeholder
        super.awakeFromNib()
    }
    
    
    override func textRect(forBounds bounds: CGRect) -> CGRect {
        //return  UIEdgeInsetsInsetRect(bounds, padding)
        return bounds.inset(by:padding)
    }
    override func editingRect(forBounds bounds: CGRect) -> CGRect {
        //return  UIEdgeInsetsInsetRect(bounds, padding)
        return bounds.inset(by:padding)
    }
    override func placeholderRect(forBounds bounds: CGRect) -> CGRect {
        //return  UIEdgeInsetsInsetRect(bounds, padding)
        return bounds.inset(by:padding)
    }

}
