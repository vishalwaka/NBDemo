//
//  FilterModel.swift
//  NBDemo
//
//  Created by Vishal Madheshia on 24/02/18.
//  Copyright © 2018 Vishal Madheshia. All rights reserved.
//

import Foundation

struct FilterModel {
    var apartmentTypes: [ApartmentType] = []
    var propertyTypes: [PropertyType] = []
    var furnishedTypes: [Furnishing] = []
    
    mutating func checkApartmentType(_ apartmentType: ApartmentType) {
        if self.apartmentTypes.contains(apartmentType) {
            self.apartmentTypes = self.apartmentTypes.filter { $0 != apartmentType}
        }
        else {
            self.apartmentTypes.append(apartmentType)
        }
    }
    
    mutating func checkPropertyType(_ propertyType: PropertyType) {
        if self.propertyTypes.contains(propertyType) {
            self.propertyTypes = self.propertyTypes.filter { $0 != propertyType}
        }
        else {
            self.propertyTypes.append(propertyType)
        }
    }
    
    mutating func checkFurnishedType(_ furnishedType: Furnishing) {
        if self.furnishedTypes.contains(furnishedType) {
            self.furnishedTypes = self.furnishedTypes.filter { $0 != furnishedType}
        }
        else {
            self.furnishedTypes.append(furnishedType)
        }
    }
}
