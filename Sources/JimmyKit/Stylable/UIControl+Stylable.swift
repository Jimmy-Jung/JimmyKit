//
//  UIControl+Stylable.swift
//  JimmyKit
//
//  Created by 정준영 on 2023/08/28.
//

import UIKit.UIControl

extension Stylable where Self: UIControl {
    /// Add a closure to the control for a given event.
    /// - Parameters:
    ///   - action: The closure to be added.
    ///   - event: The event for which the closure should be executed.
    /// - Returns: The `Self` instance for function chaining.
    @available(iOS 14.0, *)
    @discardableResult
    public func addAction(_ action: @escaping (() -> ()), for event: UIControl.Event = .touchUpInside) -> Self {
        let identifier = UIAction.Identifier(String(describing: event.rawValue))
        let action = UIAction(identifier: identifier) { _ in
            action()
        }
        self.removeAction(identifiedBy: identifier, for: event)
        self.addAction(action, for: event)
        return self
    }
    
    /// Set whether the control is enabled.
    /// - Parameter bool: `true` if the control should be enabled, `false` otherwise.
    /// - Returns: The `Self` instance for function chaining.
    @discardableResult
    public func isEnabled(_ bool: Bool) -> Self {
        self.isEnabled = bool
        return self
    }
    
    /// Set whether user interactions with the control are enabled.
    /// - Parameter bool: `true` if user interactions should be enabled, `false` otherwise.
    /// - Returns: The `Self` instance for function chaining.
    @discardableResult
    public func isUserInteractionEnabled(_ bool: Bool) -> Self {
        self.isUserInteractionEnabled = bool
        return self
    }
    
    /// Set the tint color of the control.
    /// - Parameter color: The tint color to be set.
    /// - Returns: The `Self` instance for function chaining.
    @discardableResult
    public func tintColor(_ color: UIColor) -> Self {
        self.tintColor = color
        return self
    }
}
