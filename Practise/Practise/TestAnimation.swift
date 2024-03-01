//
//  TestAnimation.swift
//  Practise
//
//  Created by Manvendu Pathak on 28/02/24.
//

import SwiftUI

struct TestAnimation: View {
    @State private var animate = false
    var body: some View {
        ZStack {
            Grid {
                ForEach(0..<50) { row in
                    GridRow {
                        ForEach(0..<25){ col in
                            Capsule()
                                .frame(width: 15,height: 3)
                                .rotationEffect(.degrees(animate ? 360 : 0))
                                .animation(.linear(duration: 3).repeatForever().delay(Double(1.0)), value: animate)
                            
                                 
                            
                        }
                    }
                }
            }
            .frame(width:500, height: 500)
        }
        .onAppear{animate.toggle()}
        .preferredColorScheme(.dark)
    }
}

struct TestAnimation_Previews: PreviewProvider {
    static var previews: some View {
        TestAnimation()
    }
}
