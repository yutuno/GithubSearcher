//
//  FirstVC.swift
//  GithubSearcher
//
//  Created by yuto on 2019/04/18.
//  Copyright © 2019 yuto. All rights reserved.
//

import UIKit

final class FirstVC: UIViewController {
    @IBOutlet weak var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .red
        
        collectionView.delegate = self
        collectionView.dataSource = self
        
        collectionView.register(UINib(nibName: "UserCell", bundle: nil),
                                forCellWithReuseIdentifier: "user")
    }
}

extension FirstVC: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.bounds.width,
                      height: 80)
    }
}

extension FirstVC: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView,
                        numberOfItemsInSection section: Int) -> Int {
        return 30
    }
    
    func collectionView(_ collectionView: UICollectionView,
                        cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "user",
                                                      for: indexPath) as! UserCell
        cell.nameLabel.text = "row: \(indexPath.row) / section: \(indexPath.section)"
        return cell
    }
}
