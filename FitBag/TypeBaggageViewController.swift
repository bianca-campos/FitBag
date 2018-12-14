//
//  TypeBaggageViewController.swift
//  FitBag
//
//  Created by Bianca Campos on 2018-12-07.
//  Copyright © 2018 Bianca Campos. All rights reserved.
//

import UIKit

class TypeBaggageViewController: UIViewController {
    @IBOutlet weak var airlineImage: UIImageView!
    @IBOutlet weak var personalItemBtn: UIButton!
    @IBOutlet weak var carryOnBtn: UIButton!
    @IBOutlet weak var luggageBtn: UIButton!
    var airlineStr: String!
    var imageStr: String!
    var personalInStr: String!
    var personalCmStr: String!
    var carryonInStr: String!
    var carryonCmStr: String!
    var luggageInStr : String!
    var luggageCmStr : String!
    var website : String!    
    var yellow = UIColor(red: 255.0/255.0, green: 228.0/255.0, blue: 0.0/255.0, alpha: 1.0)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        airlineImage.image = UIImage(named: imageStr)
        airlineImage.layer.borderWidth = 7
        airlineImage.layer.borderColor = yellow.cgColor
    }


    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    if segue.identifier == "PersonalDetails", let detailInfoVC =  segue.destination as? PersonalDetailViewController{
            detailInfoVC.nameImageString = imageStr
            detailInfoVC.personalInString = personalInStr
            detailInfoVC.personalCmString = personalCmStr
            detailInfoVC.website = website
            detailInfoVC.airlineString = airlineStr
        }
    else if segue.identifier == "CarryOnDetails", let detailInfoVC =  segue.destination as? CarryOnDetailViewController{
            detailInfoVC.nameImageString = imageStr
            detailInfoVC.carryonInString = carryonInStr
            detailInfoVC.carryonCmString = carryonCmStr
            detailInfoVC.website = website
            detailInfoVC.airlineString = airlineStr
        }

    else if segue.identifier == "LuggageDetails", let detailInfoVC =  segue.destination as? LuggageDetailViewController{
            detailInfoVC.nameImageString = imageStr
            detailInfoVC.luggageInString = luggageInStr
            detailInfoVC.luggageCmString = luggageCmStr
            detailInfoVC.website = website
            detailInfoVC.airlineString = airlineStr
        }
    }

}
