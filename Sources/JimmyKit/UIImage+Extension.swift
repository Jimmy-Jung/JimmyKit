//
//  UIImage.swift
//  
//
//  Created by 정준영 on 2023/09/02.
//

import UIKit.UIImage

@available(iOS 13.0, *)
extension UIImage {

    typealias SFConfig = UIImage.SymbolConfiguration

    /// SFImage rendering options.
    enum Rendering {
        case monochrome
        case hierarchicalColor(_ color: UIColor)
        case paletteColors(_ colors: [UIColor])
        case multicolor
    }

    /// Resize image with specified point size.
    /// - Parameter size: The point size to resize the image to.
    /// - Returns: The `UIImage` instance for function chaining.
    func pointSize(_ size: CGFloat) -> UIImage? {
        return self.applyingSymbolConfiguration(SFConfig(pointSize: size))
    }

    /// Resize image with specified font.
    /// - Parameter font: The font to resize the image to.
    /// - Returns: The `UIImage` instance for function chaining.
    func font(_ font: UIFont) -> UIImage? {
        return self.applyingSymbolConfiguration(SFConfig(font: font))
    }

    /// Resize image with specified text style.
    /// - Parameter style: The text style to resize the image to.
    /// - Returns: The `UIImage` instance for function chaining.
    func textStyle(_ style: UIFont.TextStyle) -> UIImage? {
        return self.applyingSymbolConfiguration(SFConfig(textStyle: style))
    }

    /// Resize image with specified symbol weight.
    /// - Parameter weight: The symbol weight to resize the image to.
    /// - Returns: The `UIImage` instance for function chaining.
    func weight(_ weight: UIImage.SymbolWeight) -> UIImage? {
        return self.applyingSymbolConfiguration(SFConfig(weight: weight))
    }

    /// Resize image with specified symbol scale.
    /// - Parameter scale: The symbol scale to resize the image to.
    /// - Returns: The `UIImage` instance for function chaining.
    func scale(_ scale: UIImage.SymbolScale) -> UIImage? {
        return self.applyingSymbolConfiguration(SFConfig(scale: scale))
    }

    /// Set image rendering mode.
    /// - Parameter config: The image rendering option to apply.
    /// - Returns: The `UIImage` instance for function chaining.
    @available(iOS 15.0, *)
    func renderingMode(_ config: Rendering) -> UIImage? {
        switch config {
        case .monochrome:
            if #available(iOS 16.0, *) {
                return self.applyingSymbolConfiguration(SFConfig.preferringMonochrome())
            } else {
                fatalError("iOS version is lower than 16.")
            }
        case .hierarchicalColor(let color):
            return self.applyingSymbolConfiguration(SFConfig(hierarchicalColor: color))
        case .paletteColors(let colors):
            return self.applyingSymbolConfiguration(SFConfig(paletteColors: colors))
        case .multicolor:
            return self.applyingSymbolConfiguration(SFConfig.preferringMulticolor())
        }
    }
}
