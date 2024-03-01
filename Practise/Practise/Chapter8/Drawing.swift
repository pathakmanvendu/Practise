//
//  Drawing.swift
//  Practise
//
//  Created by Manvendu Pathak on 01/03/24.
//

import SwiftUI

struct Drawing: View {
    var body: some View {
        VStack(spacing: 10){
            Rectangle()
                .stroke(.orange, lineWidth: 15)
            
        }
        .padding(.horizontal, 20)
    }
}

struct Drawing_Previews: PreviewProvider {
    static var previews: some View {
        Drawing()
    }
}
