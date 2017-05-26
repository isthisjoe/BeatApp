//
//  FeedViewController.swift
//  BeatApp
//
//  Created by Joe Nguyen on 25/5/17.
//  Copyright © 2017 BeatApp. All rights reserved.
//

import UIKit

private let feedItemCellReuseIdentifier = "FeedItemCell"

class FeedViewController: UICollectionViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: UICollectionViewDataSource
    
    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }

    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 4
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: feedItemCellReuseIdentifier, for: indexPath)
        return cell
    }
}

typealias FeedViewControllerDelegateFlowLayout = FeedViewController
extension FeedViewControllerDelegateFlowLayout: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        sizeForItemAt indexPath: IndexPath) -> CGSize {
        let infoViewHeight: CGFloat = 40;
        let itemWidth = collectionView.frame.size.width
        let itemHeight = itemWidth + infoViewHeight;
        return CGSize(width: itemWidth, height: itemHeight)
    }
}
