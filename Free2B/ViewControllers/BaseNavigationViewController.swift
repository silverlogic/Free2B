//
//  BaseNavigationViewController.swift
//  Free2B
//
//  Created by Emanuel  Guerrero on 11/11/17.
//  Copyright © 2017 SilverLogic, LLC. All rights reserved.
//

import UIKit

class BaseNavigationController: UINavigationController {
    
    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationBar.barTintColor = .main
        let imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 35, height: 35))
        imageView.image = #imageLiteral(resourceName: "free2b-logo")
        imageView.contentMode = .scaleAspectFit
        navigationBar.topItem?.titleView = imageView
    }
}
