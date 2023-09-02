//
//  UIImageVIew+Stylable.swift
//  
//
//  Created by 정준영 on 2023/08/30.
//
import UIKit

extension Stylable where Self: UIImageView {
    /// Set the image of the image view.
    /// - Parameter image: The image to be set.
    /// - Returns: The `Self` instance for function chaining.
    @discardableResult
    public func image(_ image: UIImage?) -> Self {
        self.image = image
        return self
    }
    
    /// Set the highlighted image of the image view.
    /// - Parameter image: The image to be set.
    /// - Returns: The `Self` instance for function chaining.
    @discardableResult
    public func highlightedImage(_ image: UIImage?) -> Self {
        self.highlightedImage = image
        return self
    }
    
    /// Set whether the image view should be highlighted.
    /// - Parameter isHighlighted: `true` if the image view should be highlighted, `false` otherwise.
    /// - Returns: The `Self` instance for function chaining.
    @discardableResult
    public func isHighlighted(_ isHighlighted: Bool) -> Self {
        self.isHighlighted = isHighlighted
        return self
    }
    
    /// Set the animation images of the image view.
    /// - Parameter images: The images to be set.
    /// - Returns: The `Self` instance for function chaining.
    @discardableResult
    public func animationImages(_ images: [UIImage]?) -> Self {
        self.animationImages = images
        return self
    }
    
    /// Set the highlighted animation images of the image view.
    /// - Parameter images: The images to be set.
    /// - Returns: The `Self` instance for function chaining.
    @discardableResult
    public func highlightedAnimationImages(_ images: [UIImage]?) -> Self {
        self.highlightedAnimationImages = images
        return self
    }
    
    /// Set the duration of the animation.
    /// - Parameter duration: The duration to be set.
    /// - Returns: The `Self` instance for function chaining.
    @discardableResult
    public func animationDuration(_ duration: TimeInterval) -> Self {
        self.animationDuration = duration
        return self
    }
    
    /// Set the repeat count of the animation.
    /// - Parameter count: The repeat count to be set.
    /// - Returns: The `Self` instance for function chaining.
    @discardableResult
    public func animationRepeatCount(_ count: Int) -> Self {
        self.animationRepeatCount = count
        return self
    }
    
    /// Set the tint color of the image view.
    /// - Parameter color: The color to be set.
    /// - Returns: The `Self` instance for function chaining.
    @discardableResult
    public func tintColor(_ color: UIColor) -> Self {
        self.tintColor = color
        return self
    }
  
}
