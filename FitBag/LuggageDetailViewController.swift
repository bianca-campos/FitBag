//
//  LuggageDetailViewController.swift
//  FitBag
//
//  Created by Bianca Campos on 2018-12-07.
//  Copyright © 2018 Bianca Campos. All rights reserved.
//

import UIKit

class LuggageDetailViewController: UIViewController {
    var luggageInString: String!
    var luggageCmString: String!
    var nameImageStr: String!
    @IBOutlet weak var airlineImg: UIImageView!
    var yellow = UIColor(red: 255.0/255.0, green: 228.0/255.0, blue: 0.0/255.0, alpha: 1.0)
    
    @IBOutlet weak var luggageInches: UILabel!{
        didSet{
            luggageInches.text = luggageInString
        }
    }
    
    @IBOutlet weak var luggageCentimeter: UILabel!{
        didSet{
            luggageCentimeter.text = luggageCmString
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        airlineImg.image = UIImage(named: nameImageStr)
        airlineImg.layer.borderWidth = 7
        airlineImg.layer.borderColor = yellow.cgColor
    }
}

