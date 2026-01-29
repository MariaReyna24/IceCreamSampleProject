//
//  CustomizationView.swift
//  IceCreamSampleProject
//
//  Created by Tyler Lawrence on 8/7/25.
//

import SwiftUI

struct CustomizationView: View {
    
    @State var iceCream: IceCream
    @State private var customerName: String = ""
    @State private var showingSheet: Bool = false
    @State private var specialRequest: String = ""
        
    var body: some View {
        VStack {
            
            Image(iceCream.assetName)
                .resizable()
                .scaledToFit()
            
            Picker("Scoops", selection: $iceCream.scoops) {
                ForEach(Scoops.allCases, id: \.self) {
                    Text($0.rawValue)
                }
            }
            .pickerStyle(.segmented)
            
            Picker("Sprinkles", selection: $iceCream.sprinkles) {
                ForEach(Sprinkles.allCases, id: \.self) {
                    Text($0.rawValue)
                }
            }
            .pickerStyle(.segmented)
            
            Stepper("Spoons: \(iceCream.spoons)", value: $iceCream.spoons, in: 0...3)
            
            Toggle("Cup", isOn: $iceCream.inCup)
            
            TextField("Name", text: $customerName)

            TextField("Special Requests", text: $specialRequest)
            
            Button("Review Order") {
                updateOrder()
                showingSheet.toggle()
            }
            .sheet(isPresented: $showingSheet) { OrderConfirmationView(iceCream: iceCream, customerName: customerName)
            }
        }
    }
    func updateOrder() {
        if specialRequest != "" {
            iceCream.specialRequests = specialRequest
        }
    }
}

#Preview {
    CustomizationView(iceCream: IceCream(name: "Vanilla", assetName: "vanilla"))
}
