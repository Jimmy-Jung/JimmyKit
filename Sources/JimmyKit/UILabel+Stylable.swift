//
//  UILabel+Stylable.swift
//  JimmyKiy
//
//  Created by 정준영 on 2023/08/28.
//

import UIKit.UILabel

extension Stylable where Self: UILabel {
    /// Set the text of the label.
    /// - Parameter text: The text to be set.
    /// - Returns: The `Self` instance for function chaining.
    @discardableResult
    public func text(_ text: String?) -> Self {
        self.text = text
        return self
    }
    
    /// Set the font of the label.
    /// - Parameter font: The font to be set.
    /// - Returns: The `Self` instance for function chaining.
    @discardableResult
    public func font(_ font: UIFont) -> Self {
        self.font = font
        return self
    }
    
    /// Set the text color of the label.
    /// - Parameter color: The color to be set.
    /// - Returns: The `Self` instance for function chaining.
    @discardableResult
    public func textColor(_ color: UIColor) -> Self {
        self.textColor = color
        return self
    }
    
    /// Set the highlighted text color of the label.
    /// - Parameter color: The color to be set.
    /// - Returns: The `Self` instance for function chaining.
    @discardableResult
    public func highlightedTextColor(_ color: UIColor) -> Self {
        self.highlightedTextColor = color
        return self
    }
    
    /// Set the shadow color of the label.
    /// - Parameter color: The color to be set.
    /// - Returns: The `Self` instance for function chaining.
    @discardableResult
    public func shadowColor(_ color: UIColor?) -> Self {
        self.shadowColor = color
        return self
    }
    
    /// Set the shadow offset of the label.
    /// - Parameter offset: The offset to be set.
    /// - Returns: The `Self` instance for function chaining.
    @discardableResult
    public func shadowOffset(_ offset: CGSize) -> Self {
        self.shadowOffset = offset
        return self
    }
    
    /// Set the text alignment of the label.
    /// - Parameter alignment: The alignment to be set.
    /// - Returns: The `Self` instance for function chaining.
    @discardableResult
    public func textAlignment(_ alignment: NSTextAlignment) -> Self {
        self.textAlignment = alignment
        return self
    }
    
    /// Set the line break mode of the label.
    /// - Parameter mode: The line break mode to be set.
    /// - Returns: The `Self` instance for function chaining.
    @discardableResult
    public func lineBreakMode(_ mode: NSLineBreakMode) -> Self {
        self.lineBreakMode = mode
        return self
    }
    
    /// Set the attributed text of the label.
    /// - Parameter attributedText: The attributed text to be set.
    /// - Returns: The `Self` instance for function chaining.
    @discardableResult
    public func attributedText(_ attributedText: NSAttributedString?) -> Self {
        self.attributedText = attributedText
        return self
    }
    
    /// Set the highlighting of the label.
    /// - Parameter isHighlighted: `true` if the label should be highlighted, `false` otherwise.
    /// - Returns: The `Self` instance for function chaining.
    @discardableResult
    public func isHighlighted(_ isHighlighted: Bool) -> Self {
        self.isHighlighted = isHighlighted
        return self
    }
    
    /// Set the enabling of the label.
    /// - Parameter isEnabled: `true` if the label should be enabled, `false` otherwise.
    /// - Returns: The `Self` instance for function chaining.
    @discardableResult
    public func isEnabled(_ isEnabled: Bool) -> Self {
        self.isEnabled = isEnabled
        return self
    }
    
    /// Set the number of lines of the label.
    /// - Parameter numberOfLines: The number of lines to be set.
    /// - Returns: The `Self` instance for function chaining.
    @discardableResult
    public func numberOfLines(_ numberOfLines: Int) -> Self {
        self.numberOfLines = numberOfLines
        return self
    }
    
    /// Set whether the font size should be adjusted to fit the label's width.
    /// - Parameter adjustsFontSizeToFitWidth: `true` if the font size should be adjusted, `false` otherwise.
    /// - Returns: The `Self` instance for function chaining.
    @discardableResult
    public func adjustsFontSizeToFitWidth(_ bool: Bool) -> Self {
        self.adjustsFontSizeToFitWidth = bool
        return self
    }
    
    /// Set the minimum scale factor for the font size.
    /// - Parameter minimumScaleFactor: The minimum scale factor to be set.
    /// - Returns: The `Self` instance for function chaining.
    @discardableResult
    public func minimumScaleFactor(_ minimumScaleFactor: CGFloat) -> Self {
        self.minimumScaleFactor = minimumScaleFactor
        return self
    }
    
    /// Set whether the label should allow default tightening when truncating.
    /// - Parameter allowsDefaultTighteningForTruncation: `true` if the label should allow default tightening, `false` otherwise.
    /// - Returns: The `Self` instance for function chaining.
    @discardableResult
    public func allowsDefaultTighteningForTruncation(_ bool: Bool) -> Self {
        self.allowsDefaultTighteningForTruncation = bool
        return self
    }
    
    /// Set the preferred maximum layout width of the label.
    /// - Parameter preferredMaxLayoutWidth: The preferred maximum layout width to be set.
    /// - Returns: The `Self` instance for function chaining.
    @discardableResult
    public func preferredMaxLayoutWidth(_ preferredMaxLayoutWidth: CGFloat) -> Self {
        self.preferredMaxLayoutWidth = preferredMaxLayoutWidth
        return self
    }
    
    /// Set the baseline adjustment of the label.
    /// - Parameter baselineAdjustment: The baseline adjustment to be set.
    /// - Returns: The `Self` instance for function chaining.
    @discardableResult
    public func baselineAdjustment(_ baselineAdjustment: UIBaselineAdjustment) -> Self {
        self.baselineAdjustment = baselineAdjustment
        return self
    }
    
    /// Set whether the label adjusts font for content size category.
    /// - Parameter adjustsFontForContentSizeCategory: `true` if the label adjusts font, `false` otherwise.
    /// - Returns: The `Self` instance for function chaining.
    @discardableResult
    public func adjustsFontForContentSizeCategory(_ bool: Bool) -> Self {
        self.adjustsFontForContentSizeCategory = bool
        return self
    }
}
