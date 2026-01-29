//
//  ContentView.swift
//  IceCreamSampleProject
//
//  Created by Tyler Lawrence on 8/7/25.
//

import SwiftUI

struct ContentView: View {
    let iceCreams: [IceCream] = [IceCream(name: "Vanilla", assetName: "vanilla"), IceCream(name: "Chocolate", assetName: "chocolate"), IceCream(name: "Strawberry", assetName: "strawberry")]
    var body: some View {
        NavigationStack {
            ScrollView(.horizontal) {
                HStack {
                    ForEach(iceCreams, id: \.self) { IceCream in
                        NavigationLink {
                            CustomizationView(iceCream: IceCream)
                        } label: {
                            IceCreamTileView(iceCream: IceCream)
                        }
                    }
                }
                
            }
        }
    }
}

#Preview {
    ContentView()
}


