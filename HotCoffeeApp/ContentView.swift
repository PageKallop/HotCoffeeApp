//
//  ContentView.swift
//  HotCoffeeApp
//
//  Created by Page Kallop on 1/23/21.
//

import SwiftUI
import CoreData

struct ContentView: View {
    
  @ObservedObject var orderListVM: OrderListViewModel
    
    init() {
       
        self.orderListVM = OrderListViewModel()
    }
    
    var body: some View {
        
        NavigationView {
        List {
            
            ForEach(self.orderListVM.orders, id: \.self.name) { order in
                
                HStack {
                    
                    Image(order.type)
                        .resizable()
                        .frame(width: 100, height: 100)
                        .cornerRadius(10)
                    Text(order.name)
                        .font(.largeTitle)
                        .padding([.leading], 10)
                }
            }
            }
        .navigationTitle("Orders")
        .navigationBarItems(trailing: Button("Add New Order"){})
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
