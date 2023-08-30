//
//  Stylable+UIStackView.swift
//  Photogram
//
//  Created by 정준영 on 2023/08/28.
//

import UIKit.UIStackView

extension Stylable where Self: UIStackView {
    @discardableResult
    public func alignment(_ alignment: UIStackView.Alignment) -> Self {
        self.alignment = alignment
        return self
    }
    
    @discardableResult
    public func distribution(_ distribution: UIStackView.Distribution) -> Self {
        self.distribution = distribution
        return self
    }
    
    @discardableResult
    public func axis(_ axis: NSLayoutConstraint.Axis) -> Self {
        self.axis = axis
        return self
    }
    
    @discardableResult
    public func spacing(_ spacing: CGFloat) -> Self {
        self.spacing = spacing
        return self
    }
    
    
}
