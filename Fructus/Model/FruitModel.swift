//
//  FruitModel.swift
//  Fructus
//
//  Created by Edu Caubilla on 16/5/25.
//

import Foundation
import SwiftUI

//MARK: - FRUIT DATA MODEL
struct Fruit: Identifiable {
    var id = UUID()
    var title: String
    var headline: String
    var image: String
    var gradientColors: [Color]
    var description: String
    var nutrition: [String]
}
