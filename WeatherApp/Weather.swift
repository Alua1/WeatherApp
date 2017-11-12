//
//  Weather.swift
//  WeatherApp
//
//  Created by user on 11/8/17.
//  Copyright © 2017 Alua. All rights reserved.
//

import UIKit
import ObjectMapper

class Weather: Mappable {
    var name: String = ""
    var main: Main!
    var clouds: Clouds!
    var sys: Sys!
    var wind: Wind!
    
    required init?(map: Map) {}

    func mapping(map: Map) {
        name    <- map["name"]
        main    <- map["main"]
        clouds  <- map["clouds"]
        sys     <- map["sys"]
        wind    <- map["wind"]
    }
}
struct Wind: Mappable {
    var speed: Int = 0
    init?(map: Map) {}
    mutating func mapping(map: Map) {
        speed <- map["speed"]
    }
}
struct Sys: Mappable {
    var sunset: CLong = 0
    var sunrise: CLong = 0
    var country: String = ""
    
    init?(map: Map) {}
    
    mutating func mapping(map: Map) {
        sunset <- map["sunset"]
        sunrise <- map["sunrise"]
        country <- map["country"]
    }
}
struct Clouds: Mappable {
    var all: Int = 0
    
    init?(map: Map) {}
    
    mutating func mapping(map: Map) {
        all <- map["all"]
    }
}
struct Main: Mappable {
    var temp: Double = 0
    var pressure: Int = 0
    
    init?(map: Map) {}
    
    mutating func mapping(map: Map) {
        temp        <- map["temp"]
        pressure    <- map["pressure"]
    }
}
