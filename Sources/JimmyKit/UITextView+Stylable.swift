//
//  UITextView+Stylable.swift
//  JimmyKiy
//
//  Created by 정준영 on 2023/08/31.
//

import UIKit.UITextView

extension Stylable where Self: UITextView {
    /// Allows or denies editing of text attributes.
    /// - Parameter value: A Boolean value indicating whether text attributes can be edited.
    /// - Returns: The modified text view itself.
    @discardableResult
    public func allowsEditingTextAttributes(_ value: Bool) -> Self {
        self.allowsEditingTextAttributes = value
        return self
    }

    /// Determines whether the current content should be replaced when text is inserted.
    /// - Parameter value: A Boolean value indicating whether to clear the contents when inserting text.
    /// - Returns: The modified text view itself.
    @discardableResult
    public func clearsOnInsertion(_ value: Bool) -> Self {
        self.clearsOnInsertion = value
        return self
    }

    /// Determines whether the text view can be edited.
    /// - Parameter value: A Boolean value indicating whether the text view can be edited.
    /// - Returns: The modified text view itself.
    @discardableResult
    public func isEditable(_ value: Bool) -> Self {
        self.isEditable = value
        return self
    }

    /// Determines whether the text view can be selected.
    /// - Parameter value: A Boolean value indicating whether the text view can be selected.
    /// - Returns: The modified text view itself.
    @discardableResult
    public func isSelectable(_ value: Bool) -> Self {
        self.isSelectable = value
        return self
    }

    /// The types of data that can be detected in the text view.
    /// - Parameter dataDetectorTypes: The types of data to detect.
    /// - Returns: The modified text view itself.
    @discardableResult
    public func dataDetectorTypes(_ dataDetectorTypes: UIDataDetectorTypes) -> Self {
        self.dataDetectorTypes = dataDetectorTypes
        return self
    }

    /// The delegate of the text view.
    /// - Parameter delegate: The delegate object to assign to the text view.
    /// - Returns: The modified text view itself.
    @discardableResult
    public func delegate(_ delegate: UITextViewDelegate?) -> Self {
        self.delegate = delegate
        return self
    }

    /// The font of the text.
    /// - Parameter font: The font to apply to the text.
    /// - Returns: The modified text view itself.
    @discardableResult
    public func font(_ font: UIFont?) -> Self {
        self.font = font
        return self
    }

    /// The custom input accessory view to display when the text view becomes the first responder.
    /// - Parameter inputAccessoryView: The custom input accessory view to display.
    /// - Returns: The modified text view itself.
    @discardableResult
    public func inputAccessoryView(_ view: UIView?) -> Self {
        self.inputAccessoryView = view
        return self
    }

    /// The custom input view to display when the text view becomes the first responder.
    /// - Parameter inputView: The custom input view to display.
    /// - Returns: The modified text view itself.
    @discardableResult
    public func inputView(_ inputView: UIView?) -> Self {
        self.inputView = inputView
        return self
    }

    /// The attributes to apply to links.
    /// - Parameter linkTextAttributes: The attributes to apply to links.
    /// - Returns: The modified text view itself.
    @discardableResult
    public func linkTextAttributes(_ linkTextAttributes: [NSAttributedString.Key : Any]) -> Self {
        self.linkTextAttributes = linkTextAttributes
        return self
    }

    /// The range of characters currently selected.
    /// - Parameter selectedRange: The range of characters to select.
    /// - Returns: The modified text view itself.
    @discardableResult
    public func selectedRange(_ selectedRange: NSRange) -> Self {
        self.selectedRange = selectedRange
        return self
    }

    /// The text to display in the text view.
    /// - Parameter text: The text to display.
    /// - Returns: The modified text view itself.
    @discardableResult
    public func text(_ text: String?) -> Self {
        self.text = text
        return self
    }

    /// The technique to use for aligning the text.
    /// - Parameter alignment: The alignment technique to use.
    /// - Returns: The modified text view itself.
    @discardableResult
    public func textAlignment(_ alignment: NSTextAlignment) -> Self {
        self.textAlignment = alignment
        return self
    }

    /// The color of the text.
    /// - Parameter color: The color to use for the text.
    /// - Returns: The modified text view itself.
    @discardableResult
    public func textColor(_ color: UIColor?) -> Self {
        self.textColor = color
        return self
    }

    /// The attributes to apply to incoming new text.
    /// - Parameter typingAttributes: The attributes to apply to new text.
    /// - Returns: The modified text view itself.
    @discardableResult
    public func typingAttributes(_ typingAttributes: [NSAttributedString.Key : Any]) -> Self {
        self.typingAttributes = typingAttributes
        return self
    }
}

