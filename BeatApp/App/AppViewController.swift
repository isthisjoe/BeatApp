//
//  AppViewController.swift
//  BeatApp
//
//  Created by Joe Nguyen on 25/5/17.
//  Copyright © 2017 BeatApp. All rights reserved.
//

import UIKit

class AppViewController: UIViewController {
    
    var appNavigationController: UINavigationController!
    var feedViewController: FeedViewController!
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == Identifiers.appNavigationEmbedSegue {
            if let appNavigationController = segue.destination as? UINavigationController,
                let feedViewController = UIStoryboard.feed().instantiateViewController(withIdentifier: Identifiers.feedViewController)
                    as? FeedViewController {
                appNavigationController.viewControllers = [feedViewController]
                self.appNavigationController = appNavigationController
                self.feedViewController = feedViewController
            }
        }
    }
}
