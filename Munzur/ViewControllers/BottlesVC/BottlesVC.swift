//
//  BottlesVC.swift
//  Munzur
//
//  Created by Gaurav Tiwari on 8/20/18.
//  Copyright © 2018 CBIS Technologies. All rights reserved.
//

import UIKit

class BottlesVC: UIViewController {

    @IBOutlet weak var clctionView: UICollectionView!
    
    override func viewDidLoad() {
        clctionView.register(cells: BottleCVC.self)
        clctionView.reloadData()
    }
}

extension BottlesVC: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView,
                        numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView,
                        cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if indexPath.item == 0 {
            let cell = AdvertCVC.dequeReusablyFor(collectionView, at: indexPath)
            return cell
        } else {
            let cell = BottleCVC.dequeReusablyFor(collectionView, at: indexPath)
            return cell
        }
    }
}

extension BottlesVC: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: view.bounds.width - 16, height: indexPath.item == 0 ? 200 : 160)
    }
}
