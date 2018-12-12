//
//  AirlinesTableViewCell.swift
//  FitBag
//
//  Created by Bianca Campos on 2018-12-07.
//  Copyright © 2018 Bianca Campos. All rights reserved.
//

import UIKit

class AirlinesTableViewCell: UITableViewCell {
    @IBOutlet weak var airlineImg: UIImageView!
    @IBOutlet weak var airlineName: UILabel!
    var yellow = UIColor(red: 255.0/255.0, green: 228.0/255.0, blue: 0.0/255.0, alpha: 1.0)
    

//        airlineImg.image = UIImage(named: nameImageStr)
    
    func setAirlines(airlines: Airlines){
        airlineImg.image = airlines.imageAirline
        airlineName.text = airlines.nameAirline
        airlineImg.layer.borderWidth = 7
        airlineImg.layer.borderColor = yellow.cgColor
    }

}
