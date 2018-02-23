//
//  EnumConstants.swift
//  NBDemo
//
//  Created by Vishal Madheshia on 24/02/18.
//  Copyright © 2018 Vishal Madheshia. All rights reserved.
//

import Foundation

enum ApartmentType: String {
    case RK1 = "1 RK"
    case BHK1 = "1 BHK"
    case BHK2 = "2 BHK"
    case BHK3 = "3 BHK"
    case BHK4 = "4 BHK"
    case BHK4plus = "4+ BHK"
    
    var value: String {
        switch self {
            case .RK1:
                return "RK1"
            case .BHK1:
                return "BHK1"
            case .BHK2:
                return "BHK2"
            case .BHK3:
                return "BHK3"
            case .BHK4:
                    return "BHK4"
            case .BHK4plus:
                return "BHK4+"
            }
    }
}

enum PropertyType: String {
    case AP = "Apartment"
    case IH = "Independent House/Villa"
    case IF = "Independent Floor/Builder Floor"
    
    var value: String {
        switch self {
            case .AP:
                return "AP"
            case .IH:
                return "IH"
            case .IF:
                return "IF"
            }
    }
}

enum Furnishing: String {
    case FULLY_FURNISHED = "FULLY_FURNISHED"
    case SEMI_FURNISHED = "SEMI_FURNISHED"
    var value: String {
        switch self {
            case .FULLY_FURNISHED:
                return "Full Furnished"
            case .SEMI_FURNISHED:
                return "Semi Furnished"
            }
    }
}
