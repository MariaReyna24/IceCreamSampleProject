//
//  IceCreamTileView.swift
//  IceCreamSampleProject
//
//  Created by Tyler Lawrence on 8/7/25.
//

import SwiftUI

struct IceCreamTileView: View {
    let iceCream: IceCream
    
    var body: some View {
        VStack {
            Image(iceCream.assetName)
                .resizable()
                .scaledToFit()
                .clipShape(RoundedRectangle(cornerRadius: 25))

            Text(iceCream.name)
        }
        .frame(width: 300)
        .padding()
        .background(RoundedRectangle(cornerRadius: 25)
            .foregroundStyle(.cyan))
    }
}

#Preview {
    IceCreamTileView(iceCream: IceCream(name: "Vanilla", assetName: "vanilla"))
}
