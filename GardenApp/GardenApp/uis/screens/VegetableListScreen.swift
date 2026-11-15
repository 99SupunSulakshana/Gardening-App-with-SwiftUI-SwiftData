//
//  ContentView.swift
//  GardenApp
//
//  Created by S Sulakshana on 2026-11-15.
//

import SwiftUI

struct VegetableListScreen: View {
    
    @State var vegetables: [Vegetable] = []
    
    var body: some View {
        List(vegetables){ vegetable in
            VegetableCellView(vegetable: vegetable)
        }
        .listStyle(.plain)
        .task {
            do {
                let client = VegetableHTTPClient()
                vegetables = try await client.fetchVegetables()
            } catch {
                print(error.localizedDescription)
            }
            
        }
        .navigationTitle("Vegetables")
    }
}

#Preview {
    NavigationStack {
        VegetableListScreen()
    }
    
}
