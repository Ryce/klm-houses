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

extension HousesViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return houses.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell: HouseCollectionViewCell = collectionView.dequeueReusableCell(indexPath: indexPath)
        cell.house = houses[indexPath.row]
        return cell
    }
    
}

