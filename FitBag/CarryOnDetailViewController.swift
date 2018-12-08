//
//  CarryOnDetailViewController.swift
//  FitBag
//
//  Created by Bianca Campos on 2018-12-07.
//  Copyright © 2018 Bianca Campos. All rights reserved.
//

import UIKit

class CarryOnDetailViewController: UIViewController {
    var carryonInString: String!
    var carryonCmString: String!
    @IBOutlet weak var airlineImg: UIImageView!
    
    @IBOutlet weak var CarryOnInches: UILabel!{
        didSet{
            CarryOnInches.text = carryonInString
        }
    }
    
    @IBOutlet weak var CarryOnCentimeter: UILabel!{
        didSet{
            CarryOnCentimeter.text = carryonCmString
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
