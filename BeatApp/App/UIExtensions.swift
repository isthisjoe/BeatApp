//
//  UIExtensions.swift
//  BeatApp
//
//  Created by Joe Nguyen on 26/5/17.
//  Copyright © 2017 BeatApp. All rights reserved.
//

import UIKit

extension UIStoryboard {
    static func main() -> UIStoryboard {
        return UIStoryboard(name: StoryboardNames.main, bundle: nil)
    }
    static func feed() -> UIStoryboard {
        return UIStoryboard(name: StoryboardNames.feed, bundle: nil)
    }
}

extension UIView {
    static func loadFromNibNamed(nibNamed: String, bundle : Bundle? = nil) -> UIView? {
        return UINib(nibName: nibNamed, bundle: bundle).instantiate(withOwner: nil, options: nil).first as? UIView
    }
}
