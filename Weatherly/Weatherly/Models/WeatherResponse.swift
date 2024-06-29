//
//  WeatherResponse.swift
//  Weatherly
//
//  Created by Marina Riad on 29/06/2024.
//

import Foundation

struct WeatherResponse: Codable {
  let temprature: WeatherTemprature

  enum CodingKeys: String, CodingKey {
    case temprature = "main"
  }
}

struct WeatherTemprature: Codable {
  let value: Double?

  enum CodingKeys: String, CodingKey {
    case value = "temp"
  }
}
