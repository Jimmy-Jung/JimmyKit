//
//  Builder.swift
//  
//
//  Created by 정준영 on 2023/11/02.
//

import UIKit

@dynamicMemberLookup
public struct Builder<BaseObject: AnyObject> {
    private let _build: () -> BaseObject
    public init(_ build: @escaping () -> BaseObject) {
        self._build = build
    }
    public init(_ base: BaseObject) {
        self._build = { base }
    }
    public subscript<Value>(dynamicMember keyPath: ReferenceWritableKeyPath<BaseObject, Value>) -> (Value) -> Builder<BaseObject> {
        { [build = _build] value in
            Builder {
                let object = build()
                object[keyPath: keyPath] = value
                return object
            }
        }
    }
    public func build() -> BaseObject {
        _build()
    }
}
public protocol BuilderProtocol {
    associatedtype BuilderObject: AnyObject
    var builder: Builder<BuilderObject> { get set }
}
extension BuilderProtocol where Self: AnyObject {
    @inlinable
    public var builder: Builder<Self> {
        get { Builder(self) }
        set {}
    }
}
extension NSObject: BuilderProtocol {}
