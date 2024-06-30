//
//  MeasurmentFormatter+Extension.swift
//  Weatherly
//
//  Created by Marina Riad on 30/06/2024.
//

import Foundation

extension Double {
  func formatToTemprature(unit: UnitTemperature) -> String {
    let numberFormatter = NumberFormatter()
    numberFormatter.maximumFractionDigits = 0

    let formatter = MeasurementFormatter()
    formatter.numberFormatter = numberFormatter
    formatter.locale = Locale(identifier: "en_GB")
    let temp = Measurement(value: self, unit: unit)
    return formatter.string(from: temp)
  }
}
