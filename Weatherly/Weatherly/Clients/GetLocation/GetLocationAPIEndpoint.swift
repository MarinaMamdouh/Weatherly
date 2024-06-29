//
//  GetLocationAPIEndpoint.swift
//  Weatherly
//
//  Created by Marina Riad on 29/06/2024.
//

import Foundation

enum GetLocationAPIEndpoint: APIEndpoint {

  case coordinatesBy(cityName: String)

  var path: String {
    switch self {
    case .coordinatesBy(let cityName):
      return "/geo/1.0/direct?q=\(cityName)&appid=\(Constants.Keys.weatherAPIKey)"
    }
  }
}
