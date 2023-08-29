//
//  ButtonBuilder.swift
//  SwiftyComponent
//
//  Created by 정준영 on 2023/08/28.
//

import UIKit

@available(iOS 15.0, *)
public struct ButtonBuilder {
    private var button = UIButton()
    
    public enum ButtonStyle {
        case plain
        case tinted
        case gray
        case filled
        case borderless
        case bordered
        case borderedTinted
        case borderedProminent
    }
    
    
    public init(_ style: ButtonStyle) {
        switch style {
        case .plain:
            button.configuration = UIButton.Configuration.plain()
        case .tinted:
            button.configuration = UIButton.Configuration.tinted()
        case .gray:
            button.configuration = UIButton.Configuration.gray()
        case .filled:
            button.configuration = UIButton.Configuration.filled()
        case .borderless:
            button.configuration = UIButton.Configuration.borderless()
        case .bordered:
            button.configuration = UIButton.Configuration.bordered()
        case .borderedTinted:
            button.configuration = UIButton.Configuration.borderedTinted()
        case .borderedProminent:
            button.configuration = UIButton.Configuration.borderedProminent()
        }
    }
    
    /// This method must be used at the end of the syntax.
    /// - Returns: UIButton
    public func makeButton() -> UIButton {
        return button
    }
    // MARK: - BaseColor

    /// Button's Background Color : Highlight Color Enable
    /// - Parameter color: UIColor
    /// - Returns: ButtonBuilder
    public func baseBackgroundColor(_ color: UIColor) -> Self {
        button.configuration?.baseBackgroundColor = color
        return self
    }
    
    /// Button's Tint Color
    /// - Parameter color: UIColor
    /// - Returns: ButtonBuilder
    public func baseForegroundColor(_ color: UIColor) -> Self {
        button.configuration?.baseForegroundColor = color
        return self
    }
    
    // MARK: - Title

    public func title(_ text: String) -> Self {
        button.configuration?.title = text
        return self
    }
    
    public func titleWithFont(title: String, size: CGFloat, weight: UIFont.Weight) -> Self {
        var titleAttr = AttributedString(title)
        titleAttr.font = .systemFont(ofSize: size, weight: weight)
        button.configuration?.attributedTitle = titleAttr
        return self
    }
    
    public func titleAlignment(_ alignment: UIButton.Configuration.TitleAlignment) -> Self {
        button.configuration?.titleAlignment = alignment
        return self
    }
    
    public func titlePadding(_ padding: CGFloat) -> Self {
        button.configuration?.titlePadding = padding
        return self
    }
    
    public func subtitle(_ text: String) -> Self {
        button.configuration?.subtitle = text
        return self
    }
    
    public func subtitleWithFont(title: String, size: CGFloat, weight: UIFont.Weight) -> Self {
        var titleAttr = AttributedString(title)
        titleAttr.font = .systemFont(ofSize: size, weight: weight)
        button.configuration?.attributedSubtitle = titleAttr
        return self
    }
    
    public func image(_ image: UIImage?) -> Self {
        button.configuration?.image = image
        return self
    }
    
    // MARK: - Corner & Border

    public func cornerStyle(_ cornerStyle: UIButton.Configuration.CornerStyle) -> Self {
        button.configuration?.cornerStyle = cornerStyle
        return self
    }
    
    public func borderColor(_ color: UIColor) -> Self {
        button.configuration?.background.strokeColor = color
        return self
    }
    
    public func borderWidth(_ width: CGFloat) -> Self {
        button.configuration?.background.strokeWidth = width
        return self
    }
    
    public func cornerRadius(_ radius: CGFloat) -> Self {
        button.configuration?.background.cornerRadius = radius
        return self
    }
    
    // MARK: - Padding & Inset

    public func imagePadding(_ padding: CGFloat) -> Self {
        button.configuration?.imagePadding = padding
        return self
    }
    
    public func imagePlacement(_ placement: NSDirectionalRectEdge) -> Self {
        button.configuration?.imagePlacement = placement
        return self
    }
    
    public func contentInsets(_ insets: NSDirectionalEdgeInsets) -> Self {
        button.configuration?.contentInsets = insets
        return self
    }
    
    public func buttonSize(_ size: UIButton.Configuration.Size) -> Self {
        button.configuration?.buttonSize = size
        return self
    }
    
    // MARK: - Indicator

    public func showsActivityIndicator(_ bool: Bool) -> Self {
        button.configuration?.showsActivityIndicator = bool
        return self
    }
    
    // MARK: - Add Closure

    public func addAction(_ action: @escaping (() -> ()), for event: UIControl.Event = .touchUpInside) -> Self {
        let identifier = UIAction.Identifier(String(describing: event.rawValue))
        let action = UIAction(identifier: identifier) { _ in
            action()
        }
        button.removeAction(identifiedBy: identifier, for: event)
        button.addAction(action, for: event)
        return self
    }
    
    public func addConfigurationUpdateHandler(_ action: @escaping UIButton.ConfigurationUpdateHandler) -> Self {
        button.configurationUpdateHandler = action
        return self
    }
}
