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
        return true
    }
}

