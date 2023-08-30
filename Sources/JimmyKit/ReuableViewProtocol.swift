//
//  ReuableViewProtocol.swift
//  
//
//  Created by 정준영 on 2023/08/30.
//

import UIKit

public protocol ReusableViewProtocol {
    static var identifier: String {get}
}

extension ReusableViewProtocol {
    public static var identifier: String { return String(describing: self) }
}

extension UIViewController: ReusableViewProtocol {}
extension UIView: ReusableViewProtocol {}
