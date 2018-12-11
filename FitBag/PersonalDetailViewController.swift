//
//  PersonalDetailViewController.swift
//  FitBag
//
//  Created by Bianca Campos on 2018-12-07.
//  Copyright © 2018 Bianca Campos. All rights reserved.
//

import UIKit

class PersonalDetailViewController: UIViewController {
    var personalInString: String!
    var personalCmString: String!
    var nameImageStr: String!
    @IBOutlet weak var airlineImg: UIImageView!
    var yellow = UIColor(red: 255.0, green: 228.0, blue: 0.0, alpha: 1.0)
    
    
    @IBOutlet weak var personalInches: UILabel!{
        didSet{
            personalInches.text = personalInString
        }
    }
    
    @IBOutlet weak var personalCentimeter: UILabel!{
        didSet{
            personalCentimeter.text = personalCmString
        }
    }
        
    override func viewDidLoad() {
        super.viewDidLoad()
        // TODO - Border of image
        airlineImg.image = UIImage(named: nameImageStr)
//        airlineImg.layer.masksToBounds = true
        airlineImg.layer.borderWidth = 5
        airlineImg.layer.borderColor = yellow.cgColor
        
    }
    
    
    
}
