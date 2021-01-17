//
//  VisitedButton.swift
//  christina
//
//  Created by Sebastian Negulescu on 2021-01-16.
//

import SwiftUI

struct VisitedButton: View {
    @Binding var isSet: Bool
    
    var body: some View {
        Button(action: {
            isSet.toggle()
        }) {
            Image(systemName: isSet ? "star" : "star.fill")
                .foregroundColor(isSet ? Color.gray : Color.yellow)
        }
    }
}

struct VisitedButton_Previews: PreviewProvider {
    static var previews: some View {
        VisitedButton(isSet: .constant(true))
    }
}
