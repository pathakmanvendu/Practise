//
//  PasteButtonView.swift
//  Practise
//
//  Created by Manvendu Pathak on 22/02/24.
//

import SwiftUI

struct PasteButtonView: View {
    @State var text = String()
    var body: some View {
        VStack {
            Text("Hello my name is manvendu pathak I am a student of computer science")
                .padding()
        }
        .navigationTitle("PasteButton")
    }
}

struct PasteButtonView_Previews: PreviewProvider {
    static var previews: some View {
        PasteButtonView()
    }
}
