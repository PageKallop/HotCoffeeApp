//
//  OrderListViewModel.swift
//  HotCoffeeApp
//
//  Created by Page Kallop on 1/25/21.
//

import Foundation
import SwiftUI
import CoreData
import Combine

class OrderListViewModel: ObservableObject {
    
    @Published 
    var orders = [OrderViewModel]()
   
    init() {
        fetchAllOrders()
    }
    
    func fetchAllOrders() {
        self.orders = CoreDataManager.shared.getAllOrders().map(OrderViewModel.init)
        print(self.orders)
    }
    
}

class OrderViewModel {
    
    var name = ""
    var type = ""
    
    init(order: Order) {
        self.name = order.name ?? ""
        self.type = order.type ?? ""
    }
}
