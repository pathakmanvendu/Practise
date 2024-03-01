//
//  Integration.swift
//  Practise
//
//  Created by Manvendu Pathak on 22/02/24.
//

import SwiftUI

struct Integration: View {
    @State private var animate = true
    var body: some View {
        VStack {
            ActivityIndicator(animating: animate)
            HStack{
                Toggle(isOn: $animate){
                    Text("Toggle Activity")
                }
            }
            .padding()
        }
    }
}

struct Integration_Previews: PreviewProvider {
    static var previews: some View {
        Integration()
    }
}

struct ActivityIndicator: UIViewRepresentable {
    var animating: Bool
    
    func makeUIView(context: Context) -> UIActivityIndicatorView {
        return UIActivityIndicatorView()
    }
    
    func updateUIView(_ activityIndicator: UIActivityIndicatorView, context: Context) {
        if animating {
            activityIndicator.startAnimating()
        } else{
            activityIndicator.stopAnimating()
        }
    }
}
