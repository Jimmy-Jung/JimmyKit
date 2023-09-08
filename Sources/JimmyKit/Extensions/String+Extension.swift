//
//  String+Extension.swift
//  
//
//  Created by 정준영 on 2023/09/08.
//

import Foundation

public extension String {
    // Adds subscript to String class
    subscript(idx: Int) -> Self? {
        // Calls fatalError if index is out of range
        guard (0..<count).contains(idx) else {
            fatalError("index out of range")
        }
        // Returns the character at the index position
        let result = index(startIndex, offsetBy: idx)
        return Self(self[result])
    }
}
