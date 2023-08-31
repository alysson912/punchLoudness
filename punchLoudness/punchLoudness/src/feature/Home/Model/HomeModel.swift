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
    var details: [Detail]?
}

// MARK: - Detail
struct Detail: Codable {
    var size, image, title, description: String?
    var publicSize, sixe: String?
}

// MARK: - Product
struct Product: Codable {
    var image, title, description: String?
}
