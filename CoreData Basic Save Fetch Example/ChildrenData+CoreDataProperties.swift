//
//  ChildrenData+CoreDataProperties.swift
//  CoreData Basic Save Fetch Example
//
//  Created by CoderPath on 16/07/24.
//
//

import Foundation
import CoreData


extension ChildrenData {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<ChildrenData> {
        return NSFetchRequest<ChildrenData>(entityName: "ChildrenData")
    }

    @NSManaged public var childname: String?

}

extension ChildrenData : Identifiable {

}
