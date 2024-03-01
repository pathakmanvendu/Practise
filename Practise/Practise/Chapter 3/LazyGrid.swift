//
//  LazyGrid.swift
//  Practise
//
//  Created by Manvendu Pathak on 26/02/24.
//

import SwiftUI

struct LazyGrid: View {
    let columnSpec = [
        GridItem(.adaptive(minimum: 100))
    ]
    let rowSpec = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    let colors: [Color] = [.green, .red, .yellow, .blue]
    var body: some View {
        VStack {
            ScrollView {
                LazyVGrid(columns: columnSpec, spacing: 20) {
                    ForEach(1...999, id: \.self) { index in
                        Text("Item \(index)")
                            .padding(EdgeInsets(top: 30, leading: 15, bottom: 30, trailing: 15))
                            .background(colors[index % colors.count])
                            .clipShape(Capsule())
                    }
                }
            }
        }
    }
}

struct LazyGrid_Previews: PreviewProvider {
    static var previews: some View {
        LazyGrid()
    }
}
