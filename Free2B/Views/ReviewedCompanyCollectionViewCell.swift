//
//  ReviewedCompanyCollectionViewCell.swift
//  Free2B
//
//  Created by Emanuel  Guerrero on 11/11/17.
//  Copyright © 2017 SilverLogic, LLC. All rights reserved.
//

import UIKit

final class ReviewedCompanyCollectionViewCell: UICollectionViewCell {
    
    // MARK: - Private Instance Attributes
    @IBOutlet private weak var companyImage: UIImageView!
    
    
    // MARK: - Public Instance Methods
    func configure(_ company: Company) {
        companyImage.image = company.profileImage
    }
}
