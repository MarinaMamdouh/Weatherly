//
//  ContentView.swift
//  Weatherly
//
//  Created by Marina Riad on 29/06/2024.
//

import SwiftUI

struct ContentView: View {
  @State private var city: String = ""
  @State private var isFetchingWeather = false
  @State private var temprature: WeatherTemprature?

  let locationClient = GetLocationClient()
  let weatherClient = GetWeatherClient()

    var body: some View {
        VStack {
          TextField("City", text: $city)
            .textFieldStyle(.roundedBorder)
            .onSubmit {
              isFetchingWeather = true
            }
            .task(id: isFetchingWeather) {
              if isFetchingWeather {
                await fetchWeather()
                isFetchingWeather = false
                city = ""
              }
            }
          if let temprature = temprature?.value {
            Text("\(temprature.formatToTemprature(unit: .celsius))")
              .font(.system(size: 100))
          }
          Spacer()
        }
        .padding()
    }

  private func fetchWeather() async {
    do {
      guard let location = try await locationClient.getLocation(by: city),
      let latitude = location.latitude,
      let longtitude = location.longtitude
      else { return }
      let weather = try await weatherClient.getweather(by: latitude,
                               longtitude: longtitude)
      temprature = weather?.temprature
    } catch {
      print(error)
    }
  }
}

#Preview {
    ContentView()
}
