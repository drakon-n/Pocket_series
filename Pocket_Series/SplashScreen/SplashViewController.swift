//
//  SplashViewController.swift
//  Pocket_Series
//
//  Created by Влад on 15.04.2020.
//  Copyright © 2020 Влад. All rights reserved.
//

import UIKit

final class SplashViewController: UIViewController {
    
    // MARK: - Properties
    
    @IBOutlet weak var logoImageView: UIImageView!
    
    var logoIsHidden: Bool = false
    
    static let logoImageBig: UIImage = UIImage(named: "rotated_icon")!

    // MARK: - Life cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        logoImageView.isHidden = logoIsHidden
    }
    
}
