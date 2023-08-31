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
struct HomeData: Codable {
    var products: [Product]?
}

// MARK: - Product
struct Product: Codable {
    var image, title, brand, model: String?
    var description: String?
    var productsDetails: [ProductsDetail]?
}

// MARK: - ProductsDetail
struct ProductsDetail: Codable {
    var productImage: [String]?
    var title, brand, model, description: String?
}
