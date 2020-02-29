//
//  Document+CoreDataProperties.swift
//  Documents Core Data Relationships
//
//  Created by Ante Plecas on 2/28/20.
//  Copyright © 2020 Ante Plecas. All rights reserved.
//

import Foundation
import CoreData


extension Document {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Document> {
        return NSFetchRequest<Document>(entityName: "Document")
    }

    @NSManaged public var name: String?
    @NSManaged public var content: String?
    @NSManaged public var size: Int64
    @NSManaged public var rawModifiedDate: NSDate?
    @NSManaged public var category: Category?

}
