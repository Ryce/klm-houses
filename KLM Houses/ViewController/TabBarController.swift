//
//  TabBarController.swift
//  KLM Houses
//
//  Created by Hamon Riazy on 31/05/2018.
//  Copyright © 2018 Hamon Riazy. All rights reserved.
//

import UIKit
import RealmSwift

class TabBarController: UITabBarController {
    
    // check if user is available in Realm database and load it or set up a new user
    var user: User = User.init()
    var pendingError: Error? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        do {
            user = try User.createUserIfNeeded()
        } catch error {
            pendingError = error
        }
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        showPendingAlertIfNeeded()
    }
    
    func showPendingAlertIfNeeded() {
        if let error = pendingError {
            let alert = UIAlertController(title: "Error", message: "Could not load User", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: .cancel, handler: nil))
            present(alert, animated: true, completion: nil)
        }
    }
    
}
