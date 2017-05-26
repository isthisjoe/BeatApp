//
//  FeedItemCell.swift
//  BeatApp
//
//  Created by Joe Nguyen on 25/5/17.
//  Copyright © 2017 BeatApp. All rights reserved.
//

import UIKit

class FeedItemCell: UICollectionViewCell {
    
    @IBOutlet weak var beatPadContainerView: UIView!
    @IBOutlet weak var infoView: UIView!
    
    override func awakeFromNib() {
        setup()
    }
    
    func setup() {
        if let beatPadView = UIView.loadFromNibNamed(nibNamed: NibNames.beatPadView) as? BeatPadView {
            beatPadView.frame = CGRect(x: 0, y: 0, width: bounds.size.width, height: bounds.size.width)
            beatPadContainerView.addSubview(beatPadView)
        }
    }
}
