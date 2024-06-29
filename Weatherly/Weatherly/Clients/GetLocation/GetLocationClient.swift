//
//  GetLocationClient.swift
//  Weatherly
//
//  Created by Marina Riad on 29/06/2024.
//

import Foundation

struct GetLocationClient {
  func getLocation(by cityName: String) async throws -> Location? {
    let coordinatesAPI = GetLocationAPIEndpoint.coordinatesBy(cityName: cityName)
    guard let locations: [Location] = try await BaseAPIClient.performRequest(for: coordinatesAPI) else {
      throw NetworkError.nodata
    }
    return locations.first
  }
}
