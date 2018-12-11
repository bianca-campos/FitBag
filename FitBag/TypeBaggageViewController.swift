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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        airlineImage.image = UIImage(named: imageStr)
    }


    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    if segue.identifier == "PersonalDetails", let detailInfoVC =  segue.destination as? PersonalDetailViewController{
            detailInfoVC.nameImageStr = imageStr
            detailInfoVC.personalInString = personalInStr
            detailInfoVC.personalCmString = personalCmStr

        }
    else if segue.identifier == "CarryOnDetails", let detailInfoVC =  segue.destination as? CarryOnDetailViewController{
            detailInfoVC.nameImageStr = imageStr
            detailInfoVC.carryonInString = carryonInStr
            detailInfoVC.carryonCmString = carryonCmStr
        }

    else if segue.identifier == "LuggageDetails", let detailInfoVC =  segue.destination as? LuggageDetailViewController{
            detailInfoVC.nameImageStr = imageStr
            detailInfoVC.luggageInString = luggageInStr
            detailInfoVC.luggageCmString = luggageCmStr

        }
    }

}
