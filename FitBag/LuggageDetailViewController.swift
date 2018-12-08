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
    @IBOutlet weak var airlineImg: UIImageView!
    
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
    }
}

