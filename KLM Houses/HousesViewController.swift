//
//  MasterViewController.swift
//  KLM Houses
//
//  Created by Hamon Riazy on 31/05/2018.
//  Copyright © 2018 Hamon Riazy. All rights reserved.
//

import UIKit

class HousesViewController: UIViewController, Updateable {
    
    var detailViewController: HouseDetailViewController? = nil
    var houses: [House] = []
    
    @IBOutlet var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    func configureViews() {
        // Configure views with newly set user
        collectionView.reloadData()
    }
    
}

    // MARK: - Collection View

extension HousesViewController {
    
    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return houses.count
    }
    
}

