//
//  MeasureIn+CoreDataProperties.swift
//  FitBag
//
//  Created by Bianca Campos on 2018-11-26.
//  Copyright © 2018 Bianca Campos. All rights reserved.
//
//

import Foundation
import CoreData


extension MeasureIn {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<MeasureIn> {
        return NSFetchRequest<MeasureIn>(entityName: "MeasureIn")
    }

    @NSManaged public var height: Float
    @NSManaged public var id: Int64
    @NSManaged public var width: Float
    @NSManaged public var length: Float
    @NSManaged public var idAirlines: Airlines?
    @NSManaged public var idTypeBaggage: TypeBaggage?

}
