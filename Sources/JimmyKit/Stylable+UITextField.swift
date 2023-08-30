//
//  Extension+UITextField.swift
//  SwiftyComponent
//
//  Created by 정준영 on 2023/08/28.
//

import UIKit.UITextField

extension Stylable where Self: UITextField {
    @discardableResult
    public func text(_ text: String?) -> Self {
        self.text = text
        return self
    }
    
    @discardableResult
    public func font(_ font: UIFont) -> Self {
        self.font = font
        return self
    }
    
    @discardableResult
    public func textAlignment(_ alignment: NSTextAlignment) -> Self {
        self.textAlignment = alignment
        return self
    }
    
    @discardableResult
    public func textColor(_ color: UIColor) -> Self {
        self.textColor = color
        return self
    }
    
    @discardableResult
    public func capitalizationType(_ type: UITextAutocapitalizationType) -> Self {
        self.autocapitalizationType = type
        return self
    }
    
    @discardableResult
    public func keyboardType(_ type: UIKeyboardType) -> Self {
        self.keyboardType = type
        return self
    }
    
    @discardableResult
    public func isSecureTextEntry(_ bool: Bool) -> Self {
        self.isSecureTextEntry = bool
        return self
    }
    
    @discardableResult
    public func autocorrectionType(_ type: UITextAutocorrectionType) -> Self {
        self.autocorrectionType = type
        return self
    }
    
    @discardableResult
    public func contentType(_ type: UITextContentType?) -> Self {
        self.textContentType = type
        return self
    }
    
    @discardableResult
    public func clearButtonMode(_ mode: UITextField.ViewMode) -> Self {
        self.clearButtonMode = mode
        return self
    }
    
    @discardableResult
    public func placeholder(_ text: String?) -> Self {
        self.placeholder = text
        return self
    }
    
    @discardableResult
    public func returnKeyType(_ type: UIReturnKeyType) -> Self {
        self.returnKeyType = type
        return self
    }
    
    @discardableResult
    public func delegate(_ delegator: UITextFieldDelegate) -> Self {
        self.delegate = delegator
        return self
    }
    
    @discardableResult
    public func attributedPlaceholder(
        _ text: String,
        color: UIColor,
        font: UIFont
    ) -> Self {
        let attributedString = NSAttributedString(
            string: text,
            attributes: [
                NSAttributedString.Key.foregroundColor: color,
                NSAttributedString.Key.font: font
            ]
        )
        self.attributedPlaceholder = attributedString
        return self
    }
}
