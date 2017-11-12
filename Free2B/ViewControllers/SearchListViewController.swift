//
//  SearchListViewController.swift
//  Free2B
//
//  Created by Emanuel  Guerrero on 11/11/17.
//  Copyright © 2017 SilverLogic, LLC. All rights reserved.
//

import UIKit

final class SearchListViewController: UIViewController {
    
    // MARK: - IBOutlets
    @IBOutlet private weak var companyView: BaseView!
    
    
    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }
}


// MARK: - Private Instance Methods
private extension SearchListViewController {
    func setup() {
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(handleTapGestture(gesture:)))
        companyView.addGestureRecognizer(tapGesture)
    }
    
    @objc func handleTapGestture(gesture: UITapGestureRecognizer) {
        performSegue(withIdentifier: "goToDetailSegue", sender: nil)
    }
}
