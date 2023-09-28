//
//  HomeModel.swift
//  punchLoudness
//
//  Created by Alysson on 29/08/23.
//
// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let homeData = try? JSONDecoder().decode(HomeData.self, from: jsonData)

import Foundation

// MARK: - HomeData
struct HomeDataModel: Codable {
    var totalValue: Double?
    var listProducts: [ListProduct]?
}

// MARK: - ListProduct
struct ListProduct: Codable {
    var id, image, title, brand: String?
    var model, description: String?
    var productImage: [String]?
}
