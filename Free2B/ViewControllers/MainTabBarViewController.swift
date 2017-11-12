//
//  MainTabBarViewController.swift
//  Free2B
//
//  Created by Emanuel  Guerrero on 11/12/17.
//  Copyright © 2017 SilverLogic, LLC. All rights reserved.
//

import Kingfisher
import RevealingSplashView
import UIKit

final class MainTabBarViewController: UITabBarController {

    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        var splashBackground = #imageLiteral(resourceName: "Rectangle.png")
        let backgroundSize = CGSize(width: UIScreen.main.bounds.size.width, height: UIScreen.main.bounds.size.height)
        splashBackground = splashBackground.kf.resize(to: backgroundSize)
        let icon = #imageLiteral(resourceName: "free2b-logo")
        let iconSize = CGSize(width: 98, height: 52)
        let revealingSplashView = RevealingSplashView(
            iconImage: icon,
            iconInitialSize: iconSize,
            backgroundColor: UIColor(patternImage: splashBackground)
        )
        view.addSubview(revealingSplashView)
        revealingSplashView.duration = 0.9
        revealingSplashView.useCustomIconColor = false
        revealingSplashView.animationType = .twitter
        revealingSplashView.startAnimation()
    }
}
