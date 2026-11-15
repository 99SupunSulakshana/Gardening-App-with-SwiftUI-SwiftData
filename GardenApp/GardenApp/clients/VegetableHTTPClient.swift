//
//  VegetableHTTPClient.swift
//  GardenApp
//
//  Created by S Sulakshana on 2026-11-15.
//

import Foundation

struct VegetableHTTPClient {
    
    func fetchVegetables() async throws -> [Vegetable] {
        let (data, _) = try await URLSession.shared.data(from: URL(string: "https://azamsharp.com/vegetables.json")!)
        return try JSONDecoder().decode([Vegetable].self, from: data)
    }
    
    
}
