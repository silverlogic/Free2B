//
//  Company.swift
//  Free2B
//
//  Created by Emanuel  Guerrero on 11/11/17.
//  Copyright © 2017 SilverLogic, LLC. All rights reserved.
//

import UIKit

struct Company {
    let name: String
    let location: String
    let credibilityScore: Int
    let coverImage: UIImage
    let profileImage: UIImage
}


// MARK: - Public Class Methods
extension Company {
    
    // MARK: - Private Class Attributes
    static var companies: [Company] = [
        Company(
            name: "Company One",
            location: "Boca Raton, FL",
            credibilityScore: 302,
            coverImage: #imageLiteral(resourceName: "company1"),
            profileImage: #imageLiteral(resourceName: "company1")
        ),
        Company(
            name: "Company Two",
            location: "Boca Raton, FL",
            credibilityScore: 500,
            coverImage: #imageLiteral(resourceName: "company2"),
            profileImage: #imageLiteral(resourceName: "company2")
        ),
        Company(
            name: "Company 3",
            location: "Boca Raton, FL",
            credibilityScore: 450,
            coverImage: #imageLiteral(resourceName: "company3"),
            profileImage: #imageLiteral(resourceName: "company3")
        )
    ]
    
    static let auntPeggy = Company(
        name: "Aunt Peggy's Cupcakes",
        location: "Boca Raton, FL",
        credibilityScore: 405,
        coverImage: #imageLiteral(resourceName: "Aunt-Peggys-Cupcakes"),
        profileImage: #imageLiteral(resourceName: "Aunt-Peggy")
    )
}
