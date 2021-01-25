//
//  AddOrderView.swift
//  HotCoffeeApp
//
//  Created by Page Kallop on 1/24/21.
//

import SwiftUI

struct AddOrderView: View {
    
    @State var addOrderVM = AddOrderViewModel()
    
    var body: some View {
        
        NavigationView {
        Group {
        
        VStack {
            
            TextField("Enter Name", text: self.$addOrderVM.name)
            
            Picker(selection: self.$addOrderVM.type, label: Text("")) {
                Text("Cappuccino").tag("cap")
                Text("Regular").tag("reg")
                Text("Expresso").tag("ex")
                
            }.pickerStyle(SegmentedPickerStyle())
            Button("Place Order") {
                
                self.addOrderVM.saveOrder()
                
            }.padding(8)
            .foregroundColor(Color.white)
            .background(Color.green)
            .cornerRadius(10)
        }
        }.padding()
            
        .navigationTitle("Add Order")
            
        }
        
    }
}

struct AddOrderView_Previews: PreviewProvider {
    static var previews: some View {
        AddOrderView()
    }
}
