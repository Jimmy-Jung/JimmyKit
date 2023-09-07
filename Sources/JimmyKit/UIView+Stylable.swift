//
//  UIView+Stylable.swift
//  JimmyKit
//
//  Created by 정준영 on 2023/08/28.
//

import UIKit.UIView

public protocol Stylable {}

extension UIView: Stylable {
     enum ButtonStyle {
        case plain
        case tinted
        case gray
        case filled
        case borderless
        case bordered
        case borderedTinted
        case borderedProminent
    }
}

extension Stylable where Self: UIView {
    
    /// Set the corner radius of the view.
    /// - Parameter radius: The desired corner radius for the view.
    /// - Returns: The modified view.
    @discardableResult
    public func cornerRadius(_ radius: CGFloat) -> Self {
        self.layer.cornerRadius = radius
        return self
    }
    
    /// Set the background color of the view.
    /// - Parameter color: The desired background color for the view.
    /// - Returns: The modified view.
    @discardableResult
    public func backgroundColor(_ color: UIColor) -> Self {
        self.backgroundColor = color
        return self
    }
    
    /// Set the clips to bounds of the view.
    /// - Parameter bool: The desired clips to bounds for the view.
    /// - Returns: The modified view.
    @discardableResult
    public func clipsToBounds(_ bool: Bool) -> Self {
        self.clipsToBounds = bool
        return self
    }
    
    /// Set the content mode of the view.
    /// - Parameter contentMode: The desired content mode for the view.
    /// - Returns: The modified view.
    @discardableResult
    public func contentMode(_ contentMode: UIView.ContentMode) -> Self {
        self.contentMode = contentMode
        return self
    }
    
    /// Set the is hidden of the view.
    /// - Parameter bool: The desired is hidden for the view.
    /// - Returns: The modified view.
    @discardableResult
    public func isHidden(_ bool: Bool) -> Self {
        self.isHidden = bool
        return self
    }
    
    /// Add a subview to the view.
    /// - Parameter view: The subview to be added to the view.
    /// - Returns: The modified view.
    @discardableResult
    public func addSubView(_ view: UIView) -> Self {
        self.addSubview(view)
        return self
    }
}
