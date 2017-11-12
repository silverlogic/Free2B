//
//  DetailsViewController.swift
//  Free2B
//
//  Created by Emanuel  Guerrero on 11/12/17.
//  Copyright © 2017 SilverLogic, LLC. All rights reserved.
//

import UIKit

final class CompanyDetailsViewController: UIViewController {
    
    // MARK: - IBOutlets
    @IBOutlet private weak var tableView: UITableView!
    
    
    // MARK: - Private Instance Attributes
    private enum DetailSection: Int {
        case credibility
        case pro
    }
    
    
    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }
}


// MARK: - UITableViewDataSource
extension CompanyDetailsViewController: UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let section = DetailSection(rawValue: indexPath.section) else {
            return UITableViewCell()
        }
        switch section {
        case .credibility:
            guard let cell = tableView.dequeueReusableCell(withIdentifier: "CredibilityTableViewCell") as? CredibilityTableViewCell else {
                return UITableViewCell()
            }
            return cell
        case .pro:
            guard let cell = tableView.dequeueReusableCell(withIdentifier: "CompanyProTableViewCell") as? CompanyProTableViewCell else {
                return UITableViewCell()
            }
            return cell
        }
    }
}


// MARK: - UITableViewDelegate
extension CompanyDetailsViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        guard let section = DetailSection(rawValue: indexPath.section) else { return 0 }
        switch section {
        case .credibility:
            return CredibilityTableViewCell.cellHeight
        case .pro:
            return CompanyProTableViewCell.cellHeight
        }
    }
}


// MARK: - Private Instance Methods
private extension CompanyDetailsViewController {
    func setup() {
        tableView.dataSource = self
        tableView.delegate = self
        tableView.reloadData()
    }
}
