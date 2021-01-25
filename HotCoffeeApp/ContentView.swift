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
    
    @State private var isPresented: Bool = false
    
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
        .sheet(isPresented: $isPresented, onDismiss: {
            self.orderListVM.fetchAllOrders()
        }, content: {
            AddOrderView(isPresented: $isPresented)
        })
        .navigationTitle("Orders")
        .navigationBarItems(trailing: Button("Add New Order"){
            self.isPresented = true
        })
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
