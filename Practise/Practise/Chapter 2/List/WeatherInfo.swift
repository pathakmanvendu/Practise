//
//  WeatherInfo.swift
//  Practise
//
//  Created by Manvendu Pathak on 24/02/24.
//

import Foundation

struct WeatherInfo: Identifiable {
    var id = UUID()
    var image: String
    var temp: Int
    var city: String
}


