//
//  Extension+UIView.swift
//  SwiftyComponent
//
//  Created by 정준영 on 2023/08/28.
//

import UIKit.UIView

protocol Stylable {}
extension UIView: Stylable {}

extension Stylable where Self: UIView {
    
    @discardableResult
    func cornerRadius(_ radius: CGFloat) -> Self {
        self.layer.cornerRadius = radius
        return self
    }
    
    @discardableResult
    func backgroundColor(_ color: UIColor) -> Self {
        self.backgroundColor = color
        return self
    }
    
    @discardableResult
    func clipsToBounds(_ bool: Bool) -> Self {
        self.clipsToBounds = bool
        return self
    }
    
    @discardableResult
    func contentMode(_ contentMode: UIView.ContentMode) -> Self {
        self.contentMode = contentMode
        return self
    }
    
    @discardableResult
    func isHidden(_ bool: Bool) -> Self {
        self.isHidden = bool
        return self
    }
    
    @discardableResult
    func addSubView(_ view: UIView) -> Self {
        self.addSubview(view)
        return self
    }
}
