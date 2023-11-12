//
//  File.swift
//  
//
//  Created by 정준영 on 11/13/23.
//

import UIKit

extension Builder where BaseObject: UIControl {
    
    @available(iOS 14.0, *)
    public var addAction: (_ action: @escaping () -> (), _ event: UIControl.Event) -> Self {
        { [build = _build] _action, event in
            let identifier = UIAction.Identifier(String(describing: event.rawValue))
            let action = UIAction(identifier: identifier) { _ in
                _action()
            }
            return Builder {
                let object = build()
                object.removeAction(identifiedBy: identifier, for: event)
                object.addAction(action, for: event)
                return object
            }
        }
    }
}
