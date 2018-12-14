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
    var nameImageString: String!
    var airlineString: String!
    var website: String!
    @IBOutlet weak var airlineImg: UIImageView!
    var yellow = UIColor(red: 255.0/255.0, green: 228.0/255.0, blue: 0.0/255.0, alpha: 1.0)

    
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
        airlineImg.image = UIImage(named: nameImageString)
        airlineImg.layer.borderWidth = 7
        airlineImg.layer.borderColor = yellow.cgColor
    }
    
    @IBAction func measure(_ sender: Any) {}
    
    @IBAction func openWeb(_ sender: Any) {
        UIApplication.shared.open(NSURL(string: website)! as URL, options: [:], completionHandler: nil)
    }
    
    let text = "Hey, check it out this infos: "
    let airline = "Airline:"
    let inche = "Measure for carry-on item (inches):"
    let cm = "Measure for carry-on item (centimeters):"
    let site = "Website:"
    let bye = "Thanks for use FitBag and have a safe trip!"
    @IBAction func shareInfos(_ sender: Any) {
        let activityVC = UIActivityViewController(activityItems: [text, airline, self.airlineString, inche, self.carryonInString, cm, self.carryonCmString, site, self.website, bye], applicationActivities: nil)
        activityVC.popoverPresentationController?.sourceView = self.view
        self.present(activityVC, animated: true, completion: nil)
    }
}
