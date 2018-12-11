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
    
    

//        airlineImg.image = UIImage(named: nameImageStr)
    
    func setAirlines(airlines: Airlines){
        airlineImg.image = airlines.imageAirline
        airlineName.text = airlines.nameAirline
    }

}
