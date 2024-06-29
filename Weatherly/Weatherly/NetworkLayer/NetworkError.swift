//
//  NetworkError.swift
//  Weatherly
//
//  Created by Marina Riad on 29/06/2024.
//

import Foundation

enum NetworkError: Error {
  case noInternet
  case server
  case nodata
  case invalidRequest
}
