//
//  SFSymbols.swift
//  Practise
//
//  Created by Manvendu Pathak on 22/02/24.
//

import SwiftUI

struct SFSymbols: View {
    @State private var wifiSelection = 0
    var body: some View {
        VStack{
            HStack{
                Picker("Pick one", selection: $wifiSelection) {
                    Text("No wifi").tag(0)
                    Text("Searching").tag(1)
                    Text("Wifi On").tag(2)
                }
                .pickerStyle(.segmented)
                .frame(width: 240)
                .padding(.horizontal)
                
            }
          
        }
    }
}

struct SFSymbols_Previews: PreviewProvider {
    static var previews: some View {
        SFSymbols()
    }
}
