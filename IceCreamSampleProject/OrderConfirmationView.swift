//
//  OrderConfirmationView.swift
//  IceCreamSampleProject
//
//  Created by Tyler Lawrence on 8/12/25.
//

import SwiftUI

struct OrderConfirmationView: View {
    let iceCream: IceCream
    let customerName: String
    
    var body: some View {
        VStack {
            Text("Hi \(customerName)! \nYou ordered a \(iceCream.scoops.rawValue) \(iceCream.name) ice cream, with \(iceCream.sprinkles.rawValue) sprinkles.")
            
            if iceCream.specialRequests != nil {
                Text("You requested that we:\n\(String(iceCream.specialRequests ?? ""))\nWe'll be happy to do that for you.")
            }
            
            Text("The price is $\(iceCream.calculatePrice(), specifier: "%.2f").")
        }
    }
}

#Preview {
    OrderConfirmationView(iceCream: IceCream(name: "Vanilla", assetName: "vanilla"), customerName: "Ken")
}
