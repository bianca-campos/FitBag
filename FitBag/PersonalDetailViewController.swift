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
    
    @IBOutlet weak var airlineImg: UIImageView!
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
    }
}
