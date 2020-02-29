//
//  Category+CoreDataClass.swift
//  Documents Core Data Relationships
//
//  Created by Ante Plecas on 2/28/20.
//  Copyright © 2020 Ante Plecas. All rights reserved.
//

import UIKit
import CoreData

@objc(Category)
public class Category: NSManagedObject {
    
    convenience init?(name: String?) {
        let appDelegate = UIApplication.shared.delegate as? AppDelegate  //UIKit is needed to access UIApplication
        guard let managedContext = appDelegate?.persistentContainer.viewContext,
            let name = name, name != "" else {
                return nil
        }
        self.init(entity: Category.entity(), insertInto: managedContext)
        self.name = name
    }
}
