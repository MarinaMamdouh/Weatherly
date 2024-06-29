//
//  GetWeatherClient.swift
//  Weatherly
//
//  Created by Marina Riad on 29/06/2024.
//

import Foundation

struct GetWeatherClient {
  func getweather(by latitude: Double, longtitude: Double) async throws -> WeatherResponse? {
    let weatherAPI = GetWeatherAPIEndpoint.weatherBy(latitude: latitude, longtitude: longtitude)
    guard let weather: WeatherResponse = try await BaseAPIClient.performRequest(for: weatherAPI) else {
      throw NetworkError.nodata
    }
    return weather
  }
}
