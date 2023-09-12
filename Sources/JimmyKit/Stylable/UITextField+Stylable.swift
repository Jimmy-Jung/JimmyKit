//
//  UITextField+Stylable.swift
//  JimmyKiy
//
//  Created by 정준영 on 2023/08/28.
//

import UIKit.UITextField

extension Stylable where Self: UITextField {
    /// Set the text of the text field.
    /// - Parameter text: The desired text for the text field.
    /// - Returns: The modified text field.
    @discardableResult
    public func text(_ text: String?) -> Self {
        self.text = text
        return self
    }
    
    /// Set the text color of the text field.
    /// - Parameter color: The desired text color for the text field.
    /// - Returns: The modified text field.
    @discardableResult
    public func textColor(_ color: UIColor) -> Self {
        self.textColor = color
        return self
    }
    
    /// Set the font of the text field.
    /// - Parameter font: The desired font for the text field.
    /// - Returns: The modified text field.
    @discardableResult
    public func font(_ font: UIFont) -> Self {
        self.font = font
        return self
    }
    
    /// Set the text alignment of the text field.
    /// - Parameter alignment: The desired text alignment for the text field.
    /// - Returns: The modified text field.
    @discardableResult
    public func textAlignment(_ alignment: NSTextAlignment) -> Self {
        self.textAlignment = alignment
        return self
    }
    
    /// Set the placeholder text of the text field.
    /// - Parameter text: The desired placeholder text for the text field.
    /// - Returns: The modified text field.
    @discardableResult
    public func placeholder(_ text: String?) -> Self {
        self.placeholder = text
        return self
    }
    
    /// Set the background image of the text field.
    /// - Parameter image: The desired background image for the text field.
    /// - Returns: The modified text field.
    @discardableResult
    public func background(_ image: UIImage?) -> Self {
        self.background = image
        return self
    }
    
    /// Set the disabled background image of the text field.
    /// - Parameter image: The desired disabled background image for the text field.
    /// - Returns: The modified text field.
    @discardableResult
    public func disabledBackground(_ image: UIImage?) -> Self {
        self.disabledBackground = image
        return self
    }
    
    /// Set the clear button mode of the text field.
    /// - Parameter mode: The desired clear button mode for the text field.
    /// - Returns: The modified text field.
    @discardableResult
    public func clearButtonMode(_ mode: UITextField.ViewMode) -> Self {
        self.clearButtonMode = mode
        return self
    }
    
    /// Set the minimum font size of the text field.
    /// - Parameter size: The desired minimum font size for the text field.
    /// - Returns: The modified text field.
    @discardableResult
    func minimumFontSize(_ size: CGFloat) -> Self {
        self.minimumFontSize = size
        return self
    }
    
    /// Set the autocapitalization type of the text field.
    /// - Parameter type: The desired autocapitalization type for the text field.
    /// - Returns: The modified text field.
    @discardableResult
    public func autocapitalizationType(_ type: UITextAutocapitalizationType) -> Self {
        self.autocapitalizationType = type
        return self
    }
    
    /// Set the autocorrection type of the text field.
    /// - Parameter type: The desired autocorrection type for the text field.
    /// - Returns: The modified text field.
    @discardableResult
    public func autocorrectionType(_ type: UITextAutocorrectionType) -> Self {
        self.autocorrectionType = type
        return self
    }
    
    /// Set the spell checking type of the text field.
    /// - Parameter type: The desired spell checking type for the text field.
    /// - Returns: The modified text field.
    @discardableResult
    func spellCheckingType(_ type: UITextSpellCheckingType) -> Self {
        self.spellCheckingType = type
        return self
    }
    
    /// Set the keyboard type of the text field.
    /// - Parameter type: The desired keyboard type for the text field.
    /// - Returns: The modified text field.
    @discardableResult
    public func keyboardType(_ type: UIKeyboardType) -> Self {
        self.keyboardType = type
        return self
    }
    
    /// Set the keyboard appearance of the text field.
    /// - Parameter appearance: The desired keyboard appearance for the text field.
    /// - Returns: The modified text field.
    @discardableResult
    func keyboardAppearance(_ appearance: UIKeyboardAppearance) -> Self {
        self.keyboardAppearance = appearance
        return self
    }
    
    /// Set the return key type of the text field.
    /// - Parameter type: The desired return key type for the text field.
    /// - Returns: The modified text field.
    @discardableResult
    public func returnKeyType(_ type: UIReturnKeyType) -> Self {
        self.returnKeyType = type
        return self
    }
    
    /// Set the secure text entry of the text field.
    /// - Parameter bool: The desired secure text entry for the text field.
    /// - Returns: The modified text field.
    @discardableResult
    public func isSecureTextEntry(_ bool: Bool) -> Self {
        self.isSecureTextEntry = bool
        return self
    }
    
    /// Set the text content type of the text field.
    /// - Parameter type: The desired text content type for the text field.
    /// - Returns: The modified text field.
    @discardableResult
    public func contentType(_ type: UITextContentType?) -> Self {
        self.textContentType = type
        return self
    }
    
    /// Set the delegate of the text field.
    /// - Parameter delegator: The delegate for the text field.
    /// - Returns: The modified text field.
    @discardableResult
    public func delegate(_ delegator: UITextFieldDelegate) -> Self {
        self.delegate = delegator
        return self
    }
    
    /// Set the attributed placeholder of the text field.
    /// - Parameters:
    /// - text: The desired placeholder text for the text field.
    /// - color: The desired color for the attributed placeholder text.
    /// - font: The desired font for the attributed placeholder text.
    /// - Returns: The modified text field.
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
    
    /// Set the view to be displayed on the left side of the text field.
    /// - Parameter view: The view to be displayed on the left side of the text field.
    /// - Returns: The modified text field.
    @discardableResult
    func leftView(_ view: UIView?) -> Self {
        self.leftView = view
        return self
    }
    
    /// Set the mode for displaying the left view of the text field.
    /// - Parameter mode: The mode for displaying the left view of the text field.
    /// - Returns: The modified text field.
    @discardableResult
    func leftViewMode(_ mode: UITextField.ViewMode) -> Self {
        self.leftViewMode = mode
        return self
    }
    
    /// Set the view to be displayed on the right side of the text field.
    /// - Parameter view: The view to be displayed on the right side of the text field.
    /// - Returns: The modified text field.
    @discardableResult
    func rightView(_ view: UIView?) -> Self {
        self.rightView = view
        return self
    }
    
    /// Set the mode for displaying the right view of the text field.
    /// - Parameter mode: The mode for displaying the right view of the text field.
    /// - Returns: The modified text field.
    @discardableResult
    func rightViewMode(_ mode: UITextField.ViewMode) -> Self {
        self.rightViewMode = mode
        return self
    }
    
    /// Set the input view for the text field.
    /// - Parameter view: The input view for the text field.
    /// - Returns: The modified text field.
    @discardableResult
    func inputView(_ view: UIView?) -> Self {
        self.inputView = view
        return self
    }
    
    /// Set the input accessory view for the text field.
    /// - Parameter view: The input accessory view for the text field.
    /// - Returns: The modified text field.
    @discardableResult
    func inputAccessoryView(_ view: UIView?) -> Self {
        self.inputAccessoryView = view
        return self
    }
    
    /// Set the clearsOnBeginEditing property of the text field.
    /// - Parameter clears: A Boolean value that determines whether the text field removes old text when editing begins.
    /// - Returns: The modified text field.
    @discardableResult
    public func clearsOnBeginEditing(_ clears: Bool) -> Self {
        self.clearsOnBeginEditing = clears
        return self
    }
    
    /// Set the clearsOnInsertion property of the text field.
    /// - Parameter clears: A Boolean value that determines whether inserting text replaces the previous contents.
    /// - Returns: The modified text field.
    @discardableResult
    public func clearsOnInsertion(_ clears: Bool) -> Self {
        self.clearsOnInsertion = clears
        return self
    }
    
    /// Set the allowsEditingTextAttributes property of the text field.
    /// - Parameter allows: A Boolean value that determines whether the user can edit the attributes of the text in the text field.
    /// - Returns: The modified text field.
    @discardableResult
    public func allowsEditingTextAttributes(_ allows: Bool) -> Self {
        self.allowsEditingTextAttributes = allows
        return self
    }
}
