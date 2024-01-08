//
//  UISegmentedControl+Styleable.swift
//
//
//  Created by 정준영 on 1/8/24.
//

import UIKit

@available(iOS 15.0, *)
extension Stylable where Self: UISegmentedControl {
    
    @discardableResult
    public func setImage(_ image: UIImage?, forSegmentAt segment: Int) -> Self {
        self.setImage(image, forSegmentAt: segment)
        return self
    }
    
    @discardableResult
    public func imageForSegment(at segment: Int) -> Self {
        self.imageForSegment(at: segment)
        return self
    }
    
    @discardableResult
    public func setTitle(_ title: String?, forSegmentAt segment: Int) -> Self {
        self.setTitle(title, forSegmentAt: segment)
        return self
    }
    
    @discardableResult
    public func titleForSegment(at segment: Int) -> Self {
        self.titleForSegment(at: segment)
        return self
    }
    
    @discardableResult
    public func setAction(_ action: UIAction, forSegmentAt segment: Int) -> Self {
        self.setAction(action, forSegmentAt: segment)
        return self
    }
    
    @discardableResult
    public func insertSegment(withTitle title: String?, at segment: Int, animated: Bool) -> Self {
        self.insertSegment(withTitle: title, at: segment, animated: animated)
        return self
    }
    
    @discardableResult
    public func insertSegment(with image: UIImage?, at segment: Int, animated: Bool) -> Self {
        self.insertSegment(with: image, at: segment, animated: animated)
        return self
    }
    
    @discardableResult
    public func removeSegment(at segment: Int, animated: Bool) -> Self {
        self.removeSegment(at: segment, animated: animated)
        return self
    }
    
    @discardableResult
    public func removeAllSegments() -> Self {
        self.removeAllSegments()
        return self
    }
    
    @discardableResult
    public func setEnabled(_ enabled: Bool, forSegmentAt segment: Int) -> Self {
        self.setEnabled(enabled, forSegmentAt: segment)
        return self
    }
    
    @discardableResult
    public func isEnabledForSegment(at segment: Int) -> Self {
        self.isEnabledForSegment(at: segment)
        return self
    }
    
    @discardableResult
    public func isMomentary(_ momentary: Bool) -> Self {
        self.isMomentary = momentary
        return self
    }
    
    @discardableResult
    public func setContentOffset(_ offset: CGSize, forSegmentAt segment: Int) -> Self {
        self.setContentOffset(offset, forSegmentAt: segment)
        return self
    }
    
    @discardableResult
    public func contentOffsetForSegment(at segment: Int) -> Self {
        self.contentOffsetForSegment(at: segment)
        return self
    }
    
    @discardableResult
    public func setWidth(_ width: CGFloat, forSegmentAt segment: Int) -> Self {
        self.setWidth(width, forSegmentAt: segment)
        return self
    }
    
    @discardableResult
    public func widthForSegment(at segment: Int) -> Self {
        self.widthForSegment(at: segment)
        return self
    }
    
    @discardableResult
    public func apportionsSegmentWidthsByContent(_ apportionsSegmentWidthsByContent: Bool) -> Self {
        self.apportionsSegmentWidthsByContent = apportionsSegmentWidthsByContent
        return self
    }
    
    @discardableResult
    public func selectedSegmentTintColor(_ selectedSegmentTintColor: UIColor?) -> Self {
        self.selectedSegmentTintColor = selectedSegmentTintColor
        return self
    }
    
    @discardableResult
    public func backgroundImage(_ backgroundImage: UIImage?, for state: UIControl.State, barMetrics: UIBarMetrics) -> Self {
        self.setBackgroundImage(backgroundImage, for: state, barMetrics: barMetrics)
        return self
    }
    
    @discardableResult
    public func contentPositionAdjustment(_ adjustment: UIOffset, forSegmentType leftCenterRightOrAlone: UISegmentedControl.Segment, barMetrics: UIBarMetrics) -> Self {
        self.setContentPositionAdjustment(adjustment, forSegmentType: leftCenterRightOrAlone, barMetrics: barMetrics)
        return self
    }
    
    @discardableResult
    public func dividerImage(_ dividerImage: UIImage?, forLeftSegmentState leftState: UIControl.State, rightSegmentState rightState: UIControl.State, barMetrics: UIBarMetrics) -> Self {
        self.setDividerImage(dividerImage, forLeftSegmentState: leftState, rightSegmentState: rightState, barMetrics: barMetrics)
        return self
    }
    
    @discardableResult
    public func titleTextAttributes(_ attributes: [NSAttributedString.Key : Any]?, for state: UIControl.State) -> Self {
        self.setTitleTextAttributes(attributes, for: state)
        return self
    }
    
}

