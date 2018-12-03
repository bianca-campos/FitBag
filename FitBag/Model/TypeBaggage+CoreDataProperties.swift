//
//  TypeBaggage+CoreDataProperties.swift
//  FitBag
//
//  Created by Bianca Campos on 2018-11-26.
//  Copyright © 2018 Bianca Campos. All rights reserved.
//
//

import Foundation
import CoreData


extension TypeBaggage {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<TypeBaggage> {
        return NSFetchRequest<TypeBaggage>(entityName: "TypeBaggage")
    }

    @NSManaged public var id: Int64
    @NSManaged public var type: String?
    @NSManaged public var idMeasureCmBag: NSSet?
    @NSManaged public var idMeasureInBag: NSSet?

}

// MARK: Generated accessors for idMeasureCmBag
extension TypeBaggage {

    @objc(addIdMeasureCmBagObject:)
    @NSManaged public func addToIdMeasureCmBag(_ value: MeasureCm)

    @objc(removeIdMeasureCmBagObject:)
    @NSManaged public func removeFromIdMeasureCmBag(_ value: MeasureCm)

    @objc(addIdMeasureCmBag:)
    @NSManaged public func addToIdMeasureCmBag(_ values: NSSet)

    @objc(removeIdMeasureCmBag:)
    @NSManaged public func removeFromIdMeasureCmBag(_ values: NSSet)

}

// MARK: Generated accessors for idMeasureInBag
extension TypeBaggage {

    @objc(addIdMeasureInBagObject:)
    @NSManaged public func addToIdMeasureInBag(_ value: MeasureIn)

    @objc(removeIdMeasureInBagObject:)
    @NSManaged public func removeFromIdMeasureInBag(_ value: MeasureIn)

    @objc(addIdMeasureInBag:)
    @NSManaged public func addToIdMeasureInBag(_ values: NSSet)

    @objc(removeIdMeasureInBag:)
    @NSManaged public func removeFromIdMeasureInBag(_ values: NSSet)

}
