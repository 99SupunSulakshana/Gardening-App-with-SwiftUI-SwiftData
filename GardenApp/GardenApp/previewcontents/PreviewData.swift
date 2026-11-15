//
//  PreviewData.swift
//  GardenApp
//
//  Created by S Sulakshana on 2026-11-15.
//

import Foundation

struct PreviewData {
    
    static func loadVegetables() -> [Vegetable] {
        guard let url = Bundle.main.url(forResource: "vegetables", withExtension: "json") else {
            return []
        }
        
        do {
            let data = try Data(contentsOf: url)
            let decoder = JSONDecoder()
            let vegetables = try decoder.decode([Vegetable].self, from: data)
            return vegetables
        } catch {
            return []
        }
    }
}
