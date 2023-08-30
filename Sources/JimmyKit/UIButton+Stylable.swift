//
//  UIButton+Stylable.swift
//  
//
//  Created by 정준영 on 2023/08/30.
//

import UIKit.UIButton

@available(iOS 15.0, *)
extension Stylable where Self: UIButton {
    
    /// Set the button's background color with Highlight Color enabled.
    /// - Parameter color: The background color to be set.
    /// - Returns: The `Self` instance for function chaining.
    public func baseBackgroundColor(_ color: UIColor) -> Self {
        self.configuration?.baseBackgroundColor = color
        return self
    }
    
    /// Set the button's foreground color.
    /// - Parameter color: The foreground color to be set.
    /// - Returns: The `Self` instance for function chaining.
    public func baseForegroundColor(_ color: UIColor) -> Self {
        self.configuration?.baseForegroundColor = color
        return self
    }
    
    
    /// Set the button's title.
    /// - Parameter text: The title text to be set.
    /// - Returns: The `Self` instance for function chaining.
    public func title(_ text: String) -> Self {
        self.configuration?.title = text
        return self
    }
    
    /// Set the button's title.
    /// - Parameter text: The title text to be set.
    /// - Parameter state: The state to which the title should be applied.
    /// - Returns: The `Self` instance for function chaining.
    public func title(_ text: String, for state: UIControl.State) -> Self {
        self.setTitle(text, for: state)
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
        self.configuration?.attributedTitle = titleAttr
        return self
    }
    
    /// Set the alignment of the button's title.
    /// - Parameter alignment: The alignment to be set.
    /// - Returns: The `Self` instance for function chaining.
    public func titleAlignment(_ alignment: UIButton.Configuration.TitleAlignment) -> Self {
        self.configuration?.titleAlignment = alignment
        return self
    }
    
    
    /// Set the padding of the button's title.
    /// - Parameter padding: The padding to be set.
    /// - Returns: The `Self` instance for function chaining.
    public func titlePadding(_ padding: CGFloat) -> Self {
        self.configuration?.titlePadding = padding
        return self
    }
    
    /// Set the button's subtitle.
    /// - Parameter text: The subtitle text to be set.
    /// - Returns: The `Self` instance for function chaining.
    public func subtitle(_ text: String) -> Self {
        self.configuration?.subtitle = text
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
        self.configuration?.attributedSubtitle = titleAttr
        return self
    }
    
    /// Set the button's image.
    /// - Parameter image: The image to be set.
    /// - Returns: The `Self` instance for function chaining.
    public func image(_ image: UIImage?) -> Self {
        self.configuration?.image = image
        return self
    }
    
    /// Set the button's corner style.
    /// - Parameter cornerStyle: The corner style to be set.
    /// - Returns: The `Self` instance for function chaining.
    public func cornerStyle(_ cornerStyle: UIButton.Configuration.CornerStyle) -> Self {
        self.configuration?.cornerStyle = cornerStyle
        return self
    }
    
    /// Set the button's border color.
    /// - Parameter color: The color to be set.
    /// - Returns: The `Self` instance for function chaining.
    public func borderColor(_ color: UIColor) -> Self {
        self.configuration?.background.strokeColor = color
        return self
    }
    
    /// Set the button's border width.
    /// - Parameter width: The width to be set.
    /// - Returns: The `Self` instance for function chaining.
    public func borderWidth(_ width: CGFloat) -> Self {
        self.configuration?.background.strokeWidth = width
        return self
    }
    
    /// Set the button's corner radius.
    /// - Parameter radius: The radius to be set.
    /// - Returns: The `Self` instance for function chaining.
    public func cornerRadius(_ radius: CGFloat) -> Self {
        self.configuration?.background.cornerRadius = radius
        return self
    }
    
    /// Set the padding of the button's image.
    /// - Parameter padding: The padding to be set.
    /// - Returns: The `Self` instance for function chaining.
    public func imagePadding(_ padding: CGFloat) -> Self {
        self.configuration?.imagePadding = padding
        return self
    }
    
    /// Set the placement of the button's image.
    /// - Parameter placement: The placement to be set.
    /// - Returns: The `Self` instance for function chaining.
    public func imagePlacement(_ placement: NSDirectionalRectEdge) -> Self {
        self.configuration?.imagePlacement = placement
        return self
    }
    
    /// Set the content insets of the button.
    /// - Parameter insets: The insets to be set.
    /// - Returns: The `Self` instance for function chaining.
    public func contentInsets(_ insets: NSDirectionalEdgeInsets) -> Self {
        self.configuration?.contentInsets = insets
        return self
    }
    
    /// Set the size of the button.
    /// - Parameter size: The size to be set.
    /// - Returns: The `Self` instance for function chaining.
    public func buttonSize(_ size: UIButton.Configuration.Size) -> Self {
        self.configuration?.buttonSize = size
        return self
    }
    
    /// Set whether the button shows an activity indicator.
    /// - Parameter bool: `true` if the button should show an activity indicator, `false` otherwise.
    /// - Returns: The `Self` instance for function chaining.
    public func showsActivityIndicator(_ bool: Bool) -> Self {
        self.configuration?.showsActivityIndicator = bool
        return self
    }
    
    /// Add a configuration update handler to the button.
    /// - Parameter action: The configuration update handler to be added.
    /// - Returns: The `Self` instance for function chaining.
    public func addConfigurationUpdateHandler(_ action: @escaping UIButton.ConfigurationUpdateHandler) -> Self {
        self.configurationUpdateHandler = action
        return self
    }
}
