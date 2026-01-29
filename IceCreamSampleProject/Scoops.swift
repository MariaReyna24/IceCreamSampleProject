//
//  Scoops.swift
//  IceCreamSampleProject
//
//  Created by Tyler Lawrence on 8/12/25.
//

import Foundation


enum Scoops: String, CaseIterable {
    case single
    case double
    case triple
    
    var basePrice: Double {
        switch self {
        case .single:
            return 4
        case .double:
            return 4.5
        case .triple:
            return 5
        }
    }
}
