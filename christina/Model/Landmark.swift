//
//  Landmark.swift
//  christina
//
//  Created by Sebastian Negulescu on 2021-01-16.
//

import Foundation

var landmarks: [Landmark] = load("test-landmarks.json")

struct Landmark: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    var visited: Bool
}
