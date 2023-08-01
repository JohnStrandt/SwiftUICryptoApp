//
//  String.swift
//  SwiftfulCrypto
//
//  Created by John Strandt on 7/31/23.
//

import Foundation

extension String {
    
    var removeHTML: String {
        return self.replacingOccurrences(
            of: "<[^>]+>",
            with: "",
            options: .regularExpression,
            range: nil)
    }
}
