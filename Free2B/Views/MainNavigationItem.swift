//
//  MainNavigationItem.swift
//  Free2B
//
//  Created by Emanuel  Guerrero on 11/11/17.
//  Copyright © 2017 SilverLogic, LLC. All rights reserved.
//

import UIKit

final class MainNavigationItem: UINavigationItem {
    
    override func awakeFromNib() {
        super.awakeFromNib()
        backBarButtonItem = UIBarButtonItem(title: "", style: .plain, target: nil, action: nil)
        backBarButtonItem?.tintColor = .white
        let imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 35, height: 35))
        imageView.image = #imageLiteral(resourceName: "free2b-logo")
        imageView.contentMode = .scaleAspectFit
        titleView = imageView
    }
}
