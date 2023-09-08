//
//  ButtonBuilder.swift
//  JimmyKit
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
    /// Set the button's background color with Highlight Color enabled.
    /// - Parameter color: The background color to be set.
    /// - Returns: The `Self` instance for function chaining.
    public func baseBackgroundColor(_ color: UIColor) -> Self {
        button.configuration?.baseBackgroundColor = color
        return self
    }
    
    /// Set the button's foreground color.
    /// - Parameter color: The foreground color to be set.
    /// - Returns: The `Self` instance for function chaining.
    public func baseForegroundColor(_ color: UIColor) -> Self {
        button.configuration?.baseForegroundColor = color
        return self
    }
    
    
    /// Set the button's title.
    /// - Parameter text: The title text to be set.
    /// - Returns: The `Self` instance for function chaining.
    public func title(_ text: String) -> Self {
        button.configuration?.title = text
        return self
    }
    
    /// Set the button's title with font attributes.
    /// - Parameters:
    ///   - title: The title text to be set.
    ///   - size: The size of the font to be set.
    ///   - weight: The weight of the font to be set.
    /// - Returns: The `Self` instance for function chaining.
    public func titleWithFont(title: String, size: CGFloat, weight: UIFont.Weight) -> Self {
        var titleAttr = AttributedString(title)
        titleAttr.font = .systemFont(ofSize: size, weight: weight)
        button.configuration?.attributedTitle = titleAttr
        return self
    }
    
    /// Set the alignment of the button's title.
    /// - Parameter alignment: The alignment to be set.
    /// - Returns: The `Self` instance for function chaining.
    public func titleAlignment(_ alignment: UIButton.Configuration.TitleAlignment) -> Self {
        button.configuration?.titleAlignment = alignment
        return self
    }
    
    
    /// Set the padding of the button's title.
    /// - Parameter padding: The padding to be set.
    /// - Returns: The `Self` instance for function chaining.
    public func titlePadding(_ padding: CGFloat) -> Self {
        button.configuration?.titlePadding = padding
        return self
    }
    
    /// Set the button's subtitle.
    /// - Parameter text: The subtitle text to be set.
    /// - Returns: The `Self` instance for function chaining.
    public func subtitle(_ text: String) -> Self {
        button.configuration?.subtitle = text
        return self
    }
    
    /// Set the button's subtitle with font attributes.
    /// - Parameters:
    ///   - title: The subtitle text to be set.
    ///   - size: The size of the font to be set.
    ///   - weight: The weight of the font to be set.
    /// - Returns: The `Self` instance for function chaining.
    public func subtitleWithFont(title: String, size: CGFloat, weight: UIFont.Weight) -> Self {
        var titleAttr = AttributedString(title)
        titleAttr.font = .systemFont(ofSize: size, weight: weight)
        button.configuration?.attributedSubtitle = titleAttr
        return self
    }
    
    /// Set the button's image.
    /// - Parameter image: The image to be set.
    /// - Returns: The `Self` instance for function chaining.
    public func image(_ image: UIImage?) -> Self {
        button.configuration?.image = image
        return self
    }
    
    /// Set the button's corner style.
    /// - Parameter cornerStyle: The corner style to be set.
    /// - Returns: The `Self` instance for function chaining.
    public func cornerStyle(_ cornerStyle: UIButton.Configuration.CornerStyle) -> Self {
        button.configuration?.cornerStyle = cornerStyle
        return self
    }
    
    /// Set the button's border color.
    /// - Parameter color: The color to be set.
    /// - Returns: The `Self` instance for function chaining.
    public func borderColor(_ color: UIColor) -> Self {
        button.configuration?.background.strokeColor = color
        return self
    }
    
    /// Set the button's border width.
    /// - Parameter width: The width to be set.
    /// - Returns: The `Self` instance for function chaining.
    public func borderWidth(_ width: CGFloat) -> Self {
        button.configuration?.background.strokeWidth = width
        return self
    }
    
    /// Set the button's corner radius.
    /// - Parameter radius: The radius to be set.
    /// - Returns: The `Self` instance for function chaining.
    public func cornerRadius(_ radius: CGFloat) -> Self {
        button.configuration?.background.cornerRadius = radius
        return self
    }
    
    /// Set the padding of the button's image.
    /// - Parameter padding: The padding to be set.
    /// - Returns: The `Self` instance for function chaining.
    public func imagePadding(_ padding: CGFloat) -> Self {
        button.configuration?.imagePadding = padding
        return self
    }
    
    /// Set the placement of the button's image.
    /// - Parameter placement: The placement to be set.
    /// - Returns: The `Self` instance for function chaining.
    public func imagePlacement(_ placement: NSDirectionalRectEdge) -> Self {
        button.configuration?.imagePlacement = placement
        return self
    }
    
    /// Set the content insets of the button.
    /// - Parameter insets: The insets to be set.
    /// - Returns: The `Self` instance for function chaining.
    public func contentInsets(_ insets: NSDirectionalEdgeInsets) -> Self {
        button.configuration?.contentInsets = insets
        return self
    }
    
    /// Set the size of the button.
    /// - Parameter size: The size to be set.
    /// - Returns: The `Self` instance for function chaining.
    public func buttonSize(_ size: UIButton.Configuration.Size) -> Self {
        button.configuration?.buttonSize = size
        return self
    }
    
    /// Set whether the button shows an activity indicator.
    /// - Parameter bool: `true` if the button should show an activity indicator, `false` otherwise.
    /// - Returns: The `Self` instance for function chaining.
    public func showsActivityIndicator(_ bool: Bool) -> Self {
        button.configuration?.showsActivityIndicator = bool
        return self
    }
    
    /// Add a closure to the button for a given event.
    /// - Parameters:
    /// - action: The closure to be added.
    /// - event: The event for which the closure should be executed.
    /// - Returns: The `Self` instance for function chaining.
    public func addAction(_ action: @escaping (() -> ()), for event: UIControl.Event = .touchUpInside) -> Self {
        let identifier = UIAction.Identifier(String(describing: event.rawValue))
        let action = UIAction(identifier: identifier) { _ in
            action()
        }
        button.removeAction(identifiedBy: identifier, for: event)
        button.addAction(action, for: event)
        return self
    }
    
    /// Add a configuration update handler to the button.
    /// - Parameter action: The configuration update handler to be added.
    /// - Returns: The `Self` instance for function chaining.
    public func addConfigurationUpdateHandler(_ action: @escaping UIButton.ConfigurationUpdateHandler) -> Self {
        button.configurationUpdateHandler = action
        return self
    }
}
