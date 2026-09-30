//
//  WeatherAlerts.swift
//  Stormy
//  Created by Aaron A

import Foundation
import UIKit

struct WeatherAlerts {
    
    var userAlert: String
   
    init (weatherDictionary: NSDictionary) {

        if let weatherAlerts = weatherDictionary["alerts"] as? NSArray,
            let firstAlert = weatherAlerts.firstObject as? NSDictionary,
            let title = firstAlert["title"] as? String {
            userAlert = title
        } else {
            userAlert = ""
        }
    }
}


