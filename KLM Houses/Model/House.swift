//
//  House.swift
//  KLM Houses
//
//  Created by Hamon Riazy on 31/05/2018.
//  Copyright © 2018 Hamon Riazy. All rights reserved.
//

import Foundation
import CoreLocation
import RealmSwift

class House: Object {
    @objc dynamic var index: Int = 0
    @objc dynamic var title: String = ""
    @objc dynamic var videoUrl: String = ""
    @objc dynamic var location: CLLocation?
    
    @objc dynamic var isFavorite: Bool = false
    @objc dynamic var isMissing: Bool = true
    @objc dynamic var notes: [String] = []
    
    fileprivate convenience init(index: Int, testObject: Bool) {
        self.init()
        self.index = index
        self.title = String(randomWithLength: 20)
    }

}

extension House {
    
    static func ==(lhs: House, rhs: House) -> Bool {
        return lhs.index == rhs.index
    }
    
}

var testHouseSet: [House] = {
    var result: [House] = []
    for index in 0...80 {
        result.append(House(index: index, testObject: true))
    }
    return result
}()
