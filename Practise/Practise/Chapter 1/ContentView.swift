//
//  ContentView.swift
//  Practise
//
//  Created by Manvendu Pathak on 21/02/24.
//

import SwiftUI

struct ContentView: View {
   
    var body: some View {
        NavigationStack {
            VStack(spacing: 44){
                NavigationLink("Buttons"){
                    ButtonView()
                }
                
                NavigationLink("EditButtons"){
                    EditButtonView()
                }
                NavigationLink("MenuButtons"){
                    MenuButtonView()
                }
                NavigationLink("PasteButtons"){
                    PasteButtonView()
                }
                
            }
            .padding()
        }
        
      
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
