//
//  PokedexController.swift
//  Pokedex
//
//  Created by argenis delarosa on 2/5/20.
//  Copyright © 2020 argenis delarosa. All rights reserved.
//

import UIKit

private let reuseIdentifier = "PokedexCell"

class PokedexController: UICollectionViewController {
    
    // MARK: - Properties
    
    
    
    // MARK: - Init

    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureViewComponents()
    
    }
    
    // MARK: - Helper Functions
    
    func configureViewComponents() {
        
        collectionView.backgroundColor = .white
        
        
    }

}

extension PokedexController {

    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return 6
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath) as! PokedexCell
        
        cell.backgroundColor = .blue
    
        return cell
    }
}

extension PokedexController: UICollectionViewDelegateFlowLayout {
    
//    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
//        
//        return
//    }
}
