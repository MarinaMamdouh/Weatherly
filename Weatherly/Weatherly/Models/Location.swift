//
//  Location.swift
//  Weatherly
//
//  Created by Marina Riad on 29/06/2024.
//

import Foundation

struct Location: Codable {
  let name: String?
  let latitude: Double?
  let longtitude: Double?

  enum CodingKeys: String, CodingKey {
    case name = "name"
    case latitude = "lat"
    case longtitude = "long"
  }
}
