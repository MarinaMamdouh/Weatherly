//
//  APIEndpoint.swift
//  Weatherly
//
//  Created by Marina Riad on 29/06/2024.
//

import Foundation

protocol APIEndpoint {
  var path: String { get }
}

extension APIEndpoint {
  func asURL() -> URL? {
    let endpointPath = Constants.baseURL + path
    return URL(string: endpointPath)
  }
}
