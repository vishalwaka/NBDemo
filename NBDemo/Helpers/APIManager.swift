//
//  APIManager.swift
//  NBDemo
//
//  Created by Vishal Madheshia on 24/02/18.
//  Copyright © 2018 Vishal Madheshia. All rights reserved.
//

import Foundation

protocol APIDelegate {
    //This method gets the meeting schedules for a date.
    func getProperties(forPage page: Int, filterModel filter: FilterModel, completion: @escaping ((Bool, [PropertyModel]) -> Void))
}

class APIManager: APIDelegate {
    
    func getProperties(forPage page: Int, filterModel filter: FilterModel, completion: @escaping ((Bool, [PropertyModel]) -> Void)){
        guard let url = URL(string: createURL(filterModel: filter, page: page)) else {
            return
        }
        URLSession.shared.dataTask(with: url) { (data, response, error) in
            guard error == nil else {
                completion(false,[])
                return
            }
            guard let data = data else { return }
            let responseModel = try? JSONDecoder().decode(GetPropertyResponse.self, from: data)
            completion(true, responseModel?.data ?? [])
        }.resume()
    }
    
    
    private func createURL(filterModel: FilterModel, page: Int) -> String {
        /*
         &type=BHK3/BHK4/BHK2
         &buildingType=AP/IH/IF
         &furnishing=FULLY_FURNISHED/SEMI_FURNISHED
         */
        var url = AppConstants.baseUrl
        if filterModel.apartmentTypes.count != 0 {
            
            let appartments = filterModel.apartmentTypes.map { $0.value }.joined(separator: "/")
            url = url + "&type=\(appartments)"
        }
        if filterModel.propertyTypes.count != 0 {
            let properties = filterModel.propertyTypes.map{ $0.value }.joined(separator: "/")
            url = url + "&buildingType=\(properties)"
        }
        if filterModel.furnishedTypes.count != 0 {
            let furnishTypes = filterModel.furnishedTypes.map{ $0.rawValue }.joined(separator: "/")
            url = url + "&furnishing=\(furnishTypes)"
        }
        return "\(url)&pageNo=\(page)"
    }
    
    static func getImageUrl(url: String) -> URL? {
        let urlSplitArray = url.split(separator: "_")
        var newURL = ""
        if urlSplitArray.count > 1 {
            newURL = "\(AppConstants.imageBaseUrl)\(urlSplitArray[0])/\(url)"
        }
        else {
            newURL = url
        }
        return URL(string: newURL)
    }
    
}
