//
//  UIStackView+Stylable.swift
//  JimmyKiy
//
//  Created by 정준영 on 2023/08/28.
//

import UIKit.UIStackView

extension Stylable where Self: UIStackView {
    /// Set the `alignment` property of the stack view.
    /// - Parameter alignment: The `UIStackView.Alignment` value to be set.
    /// - Returns: The `Self` instance for function chaining.
    @discardableResult
    public func alignment(_ alignment: UIStackView.Alignment) -> Self {
        self.alignment = alignment
        return self
    }
    
    /// Set the `distribution` property of the stack view.
    /// - Parameter distribution: The `UIStackView.Distribution` value to be set.
    /// - Returns: The `Self` instance for function chaining.
    @discardableResult
    public func distribution(_ distribution: UIStackView.Distribution) -> Self {
        self.distribution = distribution
        return self
    }
    
    /// Set the `axis` property of the stack view.
    /// - Parameter axis: The `NSLayoutConstraint.Axis` value to be set.
    /// - Returns: The `Self` instance for function chaining.
    @discardableResult
    public func axis(_ axis: NSLayoutConstraint.Axis) -> Self {
        self.axis = axis
        return self
    }
    
    /// Set the `spacing` property of the stack view.
    /// - Parameter spacing: The spacing value to be set.
    /// - Returns: The `Self` instance for function chaining.
    @discardableResult
    public func spacing(_ spacing: CGFloat) -> Self {
        self.spacing = spacing
        return self
    }
    
    /// Set the `isBaselineRelativeArrangement` property of the stack view.
    /// - Parameter bool: The boolean value to be set.
    /// - Returns: The `Self` instance for function chaining.
    @discardableResult
    public func isBaselineRelativeArrangement(_ bool: Bool) -> Self {
        self.isBaselineRelativeArrangement = bool
        return self
    }
    
    /// Set the `isLayoutMarginsRelativeArrangement` property of the stack view.
    /// - Parameter bool: The boolean value to be set.
    /// - Returns: The `Self` instance for function chaining.
    @discardableResult
    public func isLayoutMarginsRelativeArrangement(_ bool: Bool) -> Self {
        self.isLayoutMarginsRelativeArrangement = bool
        return self
    }
    
    /// Add a view as an arranged subview of the stack view.
    /// - Parameter view: The view to be added.
    /// - Returns: The `Self` instance for function chaining.
    @discardableResult
    public func addArrangedSubview(_ view: UIView) -> Self {
        self.addArrangedSubview(view)
        return self
    }
    
    /// Insert a view as an arranged subview of the stack view at the specified index.
    /// - Parameters:
    ///   - view: The view to be inserted.
    ///   - stackIndex: The index at which to insert the view.
    /// - Returns: The `Self` instance for function chaining.
    @discardableResult
    public func insertArrangedSubview(_ view: UIView, at stackIndex: Int) -> Self {
        self.insertArrangedSubview(view, at: stackIndex)
        return self
    }
    
    /// Remove a view from the stack view's arranged subviews.
    /// - Parameter view: The view to be removed.
    /// - Returns: The `Self` instance for function chaining.
    @discardableResult
    public func removeArrangedSubview(_ view: UIView) -> Self {
        self.removeArrangedSubview(view)
        return self
    }
    
    /// Get the custom spacing after the specified view.
    /// - Parameter arrangedSubview: The view after which to get the spacing.
    /// - Returns: The custom spacing value.
    @discardableResult
    public func customSpacing(after arrangedSubview: UIView) -> CGFloat {
        return self.customSpacing(after: arrangedSubview)
    }
    
    /// Set the custom spacing after the specified view.
    /// - Parameters:
    /// - spacing: The spacing value to be set.
    /// - arrangedSubview: The view after which to set the spacing.
    /// - Returns: The `Self` instance for function chaining.
    @discardableResult
    public func setCustomSpacing(_ spacing: CGFloat, after arrangedSubview: UIView) -> Self {
        self.setCustomSpacing(spacing, after: arrangedSubview)
        return self
    }
    
    /// Notify the stack view that its `layoutMargins` property has changed.
    /// - Returns: The `Self` instance for function chaining.
    @discardableResult
    public func layoutMarginsDidChange() -> Self {
        self.layoutMarginsDidChange()
        return self
    }
}
