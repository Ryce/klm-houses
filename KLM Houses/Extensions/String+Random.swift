//
//  String+Random.swift
//  KLM Houses
//
//  Created by Hamon Riazy on 31/05/2018.
//  Copyright © 2018 Hamon Riazy. All rights reserved.
//

import Foundation

extension String {
    
    /// Create new instance with random numeric/alphabetic/alphanumeric String of given length.
    ///
    /// - Parameters:
    ///   - randommWithLength:      The length of the random String to create.
    public init(randomWithLength length: Int) {
        let allowedCharsString: String = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"
        self.init(allowedCharsString.sample(size: length)!)
    }
    
    /// Returns a given number of random characters from the String.
    ///
    /// - Parameters:
    ///   - size: The number of random characters wanted.
    /// - Returns: A String with the given number of random characters or `nil` if empty.
    public func sample(size: Int) -> String? {
        guard !isEmpty else { return nil }
        
        var sampleElements = String()
        size.times { sampleElements.append(sample!) }
        
        return sampleElements
    }
    
    /// Returns a random character from the String.
    ///
    /// - Returns: A random character from the String or `nil` if empty.
    public var sample: Character? {
        return isEmpty ? nil : self[index(startIndex, offsetBy: Int(randomBelow: count)!)]
    }
    
    /// - Returns: `true` if contains any cahracters other than whitespace or newline characters, else `no`.
    public var isBlank: Bool { return stripped().isEmpty }
    
    /// - Returns: The string stripped by whitespace and newline characters from beginning and end.
    public func stripped() -> String { return trimmingCharacters(in: .whitespacesAndNewlines) }
    
}
