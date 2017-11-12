//
//  DataManager.swift
//  WeatherApp
//
//  Created by user on 11/8/17.
//  Copyright © 2017 Alua. All rights reserved.
//

import UIKit
import Alamofire
import SwiftyJSON
import AlamofireObjectMapper

class DataManager {
    static let shared = DataManager()
    
    typealias completion = (_ object: Weather?, _ error: Error?) -> ()
    
    func getWeatherByCity(city: String, completion: @escaping completion) {
        let openWeatherMapBaseURL = "http://api.openweathermap.org/data/2.5/weather" + "?APPID=" + "d9837d714b7ff705079c548def5adec9" + "&q=" + city
        
        request(openWeatherMapBaseURL, method: .get).responseObject { (response: DataResponse<Weather>) in
            switch response.result {
            case.success(let value):
                print(JSON(value))
                completion(value, nil)
            case.failure(let error):
                completion(nil, error)
                print(error.localizedDescription)
            }
        }
        
    }
}
