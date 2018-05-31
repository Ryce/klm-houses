//
//  User.swift
//  KLM Houses
//
//  Created by Hamon Riazy on 31/05/2018.
//  Copyright © 2018 Hamon Riazy. All rights reserved.
//

import Foundation
import RealmSwift

class User: Object {
    
    @objc dynamic var collection: [House] = []
    
}

extension User {
    
    
    /// This function checks if a user has previously been created and fetches it, if it has not previously been created it creates a new one and saves it in the database
    ///
    /// - Returns: the designated user
    static func createUserIfNeeded() throws -> User {
        let realm = try Realm()
        let users = realm.objects(User.self)
        let user: User!
        
        if users.count == 0 {
            // No users available, this should be the first start
            user = User.init()
            try realm.write {
                realm.add(user)
            }
        } else {
            user = users.first
        }
        
        return user
    }
    
}
