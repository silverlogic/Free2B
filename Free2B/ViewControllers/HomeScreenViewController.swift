//
//  ViewController.swift
//  Free2B
//
//  Created by Emanuel  Guerrero on 11/11/17.
//  Copyright © 2017 SilverLogic, LLC. All rights reserved.
//

import UIKit

final class HomeScreenViewController: UIViewController {
    
    // MARK: - IBOutlets
    @IBOutlet private weak var collectionView: UICollectionView!
    @IBOutlet private weak var signupForProButton: BaseButton!
    @IBOutlet private weak var textView: BaseView!
    
    
    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }
}


// MARK: - UICollectionViewDataSource
extension HomeScreenViewController: UICollectionViewDataSource {
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return Company.companies.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ReviewedCompanyCollectionViewCell", for: indexPath) as? ReviewedCompanyCollectionViewCell else {
            return UICollectionViewCell()
        }
        cell.configure(Company.companies[indexPath.item])
        return cell
    }
}


// MARK: - UICollectionViewDelegateFlowLayout
extension HomeScreenViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 83, height: 83)
    }
}


// MARK: - Private Instance Methods
private extension HomeScreenViewController {
    func setup() {
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(handleTapGestture(gesture:)))
        textView.addGestureRecognizer(tapGesture)
        collectionView.dataSource = self
        collectionView.delegate = self
        collectionView.reloadData()
    }
    
    @objc func handleTapGestture(gesture: UITapGestureRecognizer) {
        performSegue(withIdentifier: "goToListSegue", sender: nil)
    }
}
