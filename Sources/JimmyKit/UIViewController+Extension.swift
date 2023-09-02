//
//  UIViewController+Extension.swift
//  
//
//  Created by 정준영 on 2023/08/30.
//

import UIKit.UIViewController

public extension UIViewController {
    
    enum TransitionStyle {
        /// Present without navigation
        case present
        /// Present full screen without navigation
        case presentFull
        /// Present with embedded navigation
        case presentNavigation
        /// Present full screen with embedded navigation
        case presentFullNavigation
        /// Navigation push
        case pushNavigation
    }
    
    /// Storyboard Transition
    /// - Parameters:
    ///   - storyboard: Storyboard's name
    ///   - viewController: ViewController's Meta Type
    ///   - style: Transition Style
    func transition<T: UIViewController>(storyboard: String, viewController: T.Type, style: TransitionStyle, preprocessViewController: ((_ vc: T) -> ())? = nil) {
        let sb = UIStoryboard(name: storyboard, bundle: nil)
        guard let vc = sb.instantiateViewController(withIdentifier: viewController.identifier) as? T else {
            fatalError("There is a problem with making an instantiateViewController. The identifier may be incorrect.")
        }
        transition(viewController: vc, style: style, preprocessViewController: preprocessViewController)
    }
    
    /// ViewController Transition
    /// - Parameters:
    ///   - vc: ViewController Instance
    ///   - style: Transition Style
    func transition<T: UIViewController>(viewController vc: T, style: TransitionStyle, preprocessViewController: ((_ vc: T) -> ())? = nil) {
        preprocessViewController?(vc)
        switch style {
        case .present:
            present(vc, animated: true)
        case .presentFull:
            vc.modalPresentationStyle = .fullScreen
            present(vc, animated: true)
        case .presentNavigation:
            let nav = UINavigationController(rootViewController: vc)
            present(nav, animated: true)
        case .presentFullNavigation:
            let nav = UINavigationController(rootViewController: vc)
            nav.modalPresentationStyle = .fullScreen
            present(nav, animated: true)
        case .pushNavigation:
            navigationController?.pushViewController(vc, animated: true)
        }
    }
}
