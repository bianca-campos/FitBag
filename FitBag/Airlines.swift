//
//  Airlines.swift
//  FitBag
//
//  Created by Bianca Campos on 2018-12-11.
//  Copyright © 2018 Bianca Campos. All rights reserved.
//

import Foundation
import UIKit
class Airlines{
    
    var imageAirline: UIImage!
    var nameAirline: String!
    var personalIn: String!
    var personalCm: String!
    var carryOnIn: String!
    var carryOnCm: String!
    var luggageIn: String!
    var luggageCm: String!
    var website: String!
    var imageName: String!
    
    init(imageAirline: UIImage, imageName: String, nameAirline: String, personalIn: String, personalCm: String, carryOnIn: String, carryOnCm: String, luggageIn: String, luggageCm: String, website: String){
        self.imageAirline = imageAirline
        self.imageName = imageName
        self.nameAirline = nameAirline
        self.personalIn = personalIn
        self.personalCm = personalCm
        self.carryOnIn = carryOnIn
        self.carryOnCm = carryOnCm
        self.luggageIn = luggageIn
        self.luggageCm = luggageCm
        self.website = website
    }
}


