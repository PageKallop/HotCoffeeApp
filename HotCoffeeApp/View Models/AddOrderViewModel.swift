//
//  AddOrderViewModel.swift
//  HotCoffeeApp
//
//  Created by Page Kallop on 1/24/21.
//

import Foundation
import SwiftUI

class AddOrderViewModel {
    
    var name: String = ""
    var type: String = ""
    
    func saveOrder() {
        
        CoreDataManager.shared.saveOrder(name: self.name, type: self.type)
    }
}
