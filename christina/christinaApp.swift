//
//  christinaApp.swift
//  christina
//
//  Created by Sebastian Negulescu on 2021-01-16.
//

import SwiftUI

@main
struct christinaApp: App {
    @StateObject private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
        }
    }
}
