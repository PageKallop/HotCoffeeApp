//
//  NSManagedObjectContext+Ext.swift
//  HotCoffeeApp
//
//  Created by Page Kallop on 1/24/21.
//

import Foundation
import UIKit
import CoreData

extension NSManagedObjectContext {
    
    static var current: NSManagedObjectContext {
        
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        return appDelegate.persistentContainer.viewContext
    }
}

