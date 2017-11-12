//
//  AppDelegate.swift
//  Free2B
//
//  Created by Emanuel  Guerrero on 11/11/17.
//  Copyright © 2017 SilverLogic, LLC. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        UINavigationBar.appearance().barTintColor = .main
        let rootController = window?.rootViewController as! UITabBarController
        rootController.selectedIndex = 1
        let navtitleTextAttributes: [NSAttributedStringKey: Any] = [.foregroundColor: UIColor.white]
        UINavigationBar.appearance().titleTextAttributes = navtitleTextAttributes
        UIBarButtonItem.appearance().setTitleTextAttributes(navtitleTextAttributes, for: .normal)
        return true
    }
}

