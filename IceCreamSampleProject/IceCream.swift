//
//  IceCream.swift
//  IceCreamSampleProject
//
//  Created by Tyler Lawrence on 8/7/25.
//

import Foundation

struct IceCream: Hashable {
    var name: String
    var assetName: String
    var scoops: Scoops = .single
    var sprinkles: Sprinkles = .none
    var spoons: Int = 0
    var inCup: Bool = false
    var specialRequests: String?
    
    func calculatePrice() -> Double {
        var price = scoops.basePrice
        let taxRate = 0.08
        
        if sprinkles == .chocolate {
            price += 0.5
        }
        
        if sprinkles == .rainbow {
            price += 0.5
        }
        
        return price + (price * taxRate)
    }
    
}
