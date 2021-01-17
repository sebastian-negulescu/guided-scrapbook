//
//  LandmarkList.swift
//  christina
//
//  Created by Sebastian Negulescu on 2021-01-16.
//

import SwiftUI

struct LandmarkList: View {
    @EnvironmentObject var modelData: ModelData
    @State private var showUnvisitedOnly = false
    
    var filteredLandmarks: [Landmark] {
        modelData.landmarks.filter { landmark in
            (!showUnvisitedOnly || !landmark.visited)
        }
    }
    
    var body: some View {
        NavigationView {
            List {
                Toggle(isOn: $showUnvisitedOnly) {
                    Text("Unvisited only")
                }
                
                ForEach(filteredLandmarks) {landmark in
                    NavigationLink(destination: LandmarkDetail(landmark: landmark)) {
                        LandmarkRow(landmark: landmark)
                    }
                }
            }
            .navigationTitle("Landmarks")
        }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList()
            .environmentObject(ModelData())
    }
}
