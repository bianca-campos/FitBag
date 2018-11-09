//
//  Airlines+CoreDataProperties.swift
//  FitBag
//
//  Created by Bianca Campos on 2018-11-09.
//  Copyright © 2018 Bianca Campos. All rights reserved.
//
//

import Foundation
import CoreData


extension Airlines {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Airlines> {
        return NSFetchRequest<Airlines>(entityName: "Airlines")
    }

    @NSManaged public var id: Int64
    @NSManaged public var logoImg: String?
    @NSManaged public var name: String?
    @NSManaged public var website: String?
    @NSManaged public var idMeasureCmAirline: NSSet?
    @NSManaged public var isMeasureInAirline: NSSet?

}

// MARK: Generated accessors for idMeasureCmAirline
extension Airlines {

    @objc(addIdMeasureCmAirlineObject:)
    @NSManaged public func addToIdMeasureCmAirline(_ value: MeasureCm)

    @objc(removeIdMeasureCmAirlineObject:)
    @NSManaged public func removeFromIdMeasureCmAirline(_ value: MeasureCm)

    @objc(addIdMeasureCmAirline:)
    @NSManaged public func addToIdMeasureCmAirline(_ values: NSSet)

    @objc(removeIdMeasureCmAirline:)
    @NSManaged public func removeFromIdMeasureCmAirline(_ values: NSSet)

}

// MARK: Generated accessors for isMeasureInAirline
extension Airlines {

    @objc(addIsMeasureInAirlineObject:)
    @NSManaged public func addToIsMeasureInAirline(_ value: MeasureIn)

    @objc(removeIsMeasureInAirlineObject:)
    @NSManaged public func removeFromIsMeasureInAirline(_ value: MeasureIn)

    @objc(addIsMeasureInAirline:)
    @NSManaged public func addToIsMeasureInAirline(_ values: NSSet)

    @objc(removeIsMeasureInAirline:)
    @NSManaged public func removeFromIsMeasureInAirline(_ values: NSSet)

}
