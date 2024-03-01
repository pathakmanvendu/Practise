//
//  CustomModifier.swift
//  Practise
//
//  Created by Manvendu Pathak on 22/02/24.
//

import SwiftUI

struct CustomModifier: View {
    var body: some View {
        Text("Perfect").modifier(BackgroundStyle(bgColor: .blue))
    }
}

struct BackgroundStyle: ViewModifier {
    var bgColor: Color
    func body(content: Content) -> some View {
        content
            .frame(width: UIScreen.main.bounds.width*0.3)
            .foregroundColor(.black)
            .padding()
            .background(bgColor)
            .cornerRadius(20)
    }
}

struct CustomModifier_Previews: PreviewProvider {
    static var previews: some View {
        CustomModifier()
    }
}
