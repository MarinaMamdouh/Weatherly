//
//  APIEndpoint.swift
//  Weatherly
//
//  Created by Marina Riad on 29/06/2024.
//

import Foundation

enum APIEndpoint {
  static let baseURL = "https://openweathermap.org"

  case coordinatesBy(cityName: String)
  case weatherBy(latitude: Double, longtitude: String)

  private var path: String {
    switch self {
    case .coordinatesBy(let cityName):
      return "/geo/1.0/direct?q=\(cityName)&appid=\(Constants.Keys.weatherAPIKey)"
    case .weatherBy(let latitude, let longtitude):
      return "/data/2.5/weather?lat=\(latitude)&lon=\(longtitude)&appid=\(Constants.Keys.weatherAPIKey)"
    }
  }

  static func endPointURL(for endPoint: APIEndpoint) -> URL? {
    let endpointPath = APIEndpoint.baseURL + endPoint.path
    return URL(string: endpointPath)
  }
}
