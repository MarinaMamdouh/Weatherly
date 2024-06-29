//
//  GetWeatherAPIEndpoint.swift
//  Weatherly
//
//  Created by Marina Riad on 29/06/2024.
//

import Foundation

enum GetWeatherAPIEndpoint: APIEndpoint {

  case weatherBy(latitude: Double, longtitude: Double)

  internal var path: String {
    switch self {
    case .weatherBy(let latitude, let longtitude):
      return "/data/2.5/weather?lat=\(latitude)&lon=\(longtitude)&appid=\(Constants.Keys.weatherAPIKey)"
    }
  }
}
