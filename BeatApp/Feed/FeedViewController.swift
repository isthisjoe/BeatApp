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
        self.collectionView!.register(UICollectionViewCell.self, forCellWithReuseIdentifier: feedItemCellReuseIdentifier)
    }

    // MARK: UICollectionViewDataSource

    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }

    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 2
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: feedItemCellReuseIdentifier, for: indexPath)
        return cell
    }
}
