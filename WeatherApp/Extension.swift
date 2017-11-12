
//
//  Extension.swift
//  WeatherApp
//
//  Created by user on 11/8/17.
//  Copyright © 2017 Alua. All rights reserved.
//

import UIKit

extension Double {
    func forTailingZero() -> String{
        var tempVar = String(format: "%g", self)
        return tempVar
    }
}
