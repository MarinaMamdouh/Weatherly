//
//  BaseAPIClient.swift
//  Weatherly
//
//  Created by Marina Riad on 29/06/2024.
//

import Foundation


class BaseAPIClient{
  static func performRequest<T: Decodable>(for endpoint: APIEndpoint) async throws  -> T? {
    guard let url = endpoint.asURL() else {
      throw NetworkError.invalidRequest
    }
    let(data, response) = try await URLSession.shared.data(from: url)
    guard let httpsResponse = response as? HTTPURLResponse,
          httpsResponse.statusCode == 200
    else {
      throw NetworkError.server
    }
    let model = try JSONDecoder().decode(T.self, from: data)
    return model
  }
}
