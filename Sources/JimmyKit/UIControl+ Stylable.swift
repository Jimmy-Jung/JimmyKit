//
//  UIControl+ Stylable.swift
//  JimmyKit
//
//  Created by 정준영 on 2023/08/28.
//

import UIKit.UIControl

extension Stylable where Self: UIControl {
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
    
    @discardableResult
    public func isEnabled(_ bool: Bool) -> Self {
        self.isEnabled = bool
        return self
    }
    
    @discardableResult
    public func isUserInteractionEnabled(_ bool: Bool) -> Self {
        self.isUserInteractionEnabled = bool
        return self
    }
    
    @discardableResult
    public func tintColor(_ color: UIColor) -> Self {
        self.tintColor = color
        return self
    }
}
