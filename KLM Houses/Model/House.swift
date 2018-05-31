//
//  House.swift
//  KLM Houses
//
//  Created by Hamon Riazy on 31/05/2018.
//  Copyright © 2018 Hamon Riazy. All rights reserved.
//

import Foundation
import CoreLocation

struct House {
    var index: Int
    var title: String
    var videoUrl: String?
    var location: CLLocationCoordinate2D
    
    var isFavorite: Bool
    var isMissing: Bool
    var notes: [String]

}

extension House: Equatable {
    
    static func ==(lhs: House, rhs: House) -> Bool {
        return lhs.index == rhs.index
    }
    
}

var testHouseSet: [House] = [
    House(index: 0, title: "Björk house number 1", videoUrl: "https://youtu.be/Ch104M9YnDo", location: .init(latitude: 33.053, longitude: 133.053), isFavorite: false, isMissing: false, notes: [])
]
