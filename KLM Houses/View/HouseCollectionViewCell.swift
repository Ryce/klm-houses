//
//  HouseCollectionViewCell.swift
//  KLM Houses
//
//  Created by Hamon Riazy on 31/05/2018.
//  Copyright © 2018 Hamon Riazy. All rights reserved.
//

import UIKit

class HouseCollectionViewCell: UICollectionViewCell, Reusable {
    
    var house: House? {
        didSet {
            setupView()
        }
    }
    
    func setupView() {
        // TODO:
    }
    
}
