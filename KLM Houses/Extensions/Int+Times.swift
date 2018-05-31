//
//  Int+Times.swift
//  KLM Houses
//
//  Created by Hamon Riazy on 31/05/2018.
//  Copyright © 2018 Hamon Riazy. All rights reserved.
//

import Foundation

extension Int {
    
    /// Runs the code passed as a closure the specified number of times.
    ///
    /// - Parameters:
    ///   - closure: The code to be run multiple times.
    public func times(_ closure: () -> Void) {
        guard self > 0 else { return }
        for _ in 0..<self { closure() }
    }
    
    /// Initializes a new `Int ` instance with a random value below a given `Int`.
    ///
    /// - Parameters:
    ///   - randomBelow: The upper bound value to create a random value with.
    public init?(randomBelow upperLimit: Int) {
        guard upperLimit > 0 else { return nil }
        self.init(arc4random_uniform(UInt32(upperLimit)))
    }
    
}
