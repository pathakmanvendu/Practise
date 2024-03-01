//
//  PresentingModall.swift
//  Practise
//
//  Created by Manvendu Pathak on 29/02/24.
//

import SwiftUI

struct PresentingModally: View {
    @State private var showSubmitAlert = false
    var body: some View {
        Button("Show Alert"){
            showSubmitAlert = true
        }
        .alert("Confirm Actions",isPresented: $showSubmitAlert) {
            Button("OK"){}
        } message: {
            Text("Are you sure you want to proceed?")
        }
    }
    
}

struct PresentingModall_Previews: PreviewProvider {
    static var previews: some View {
        PresentingModally()
    }
}



struct PresentingModally2: View {
    @State private var changeText = false
    @State private var displayedText = "Tap to change text"
    var body: some View {
        Button(displayedText){
            changeText = true
        }.alert("Changing Text", isPresented: $changeText) {
            Button("Yes", role: .destructive){
                 if(displayedText == "Stay Foolish")
                {
                   displayedText =  "Stay Hungry"
                }else {
                    displayedText = "Stay Foolish"
                  }
            }
            Button("Do Nothing", role: .cancel){}
        } message: {
            Text("Do you want to change the text")
        }
        
    }
}

struct PresentingModally2_Previews: PreviewProvider {
    static var previews: some View {
        PresentingModally2()
    }
}


struct PresentingModally3: View {
    @State private var bulbColor = Color.red
    var body: some View {
        Image(systemName: "lightbulb.fill")
            .font(.system(size: 60))
            .foregroundColor(bulbColor)
            .contextMenu {
                Button("Yellow Bulb"){
                    bulbColor = .yellow
                }
                Button("Blue Bulb"){
                    bulbColor = .blue
                }
                Button("Green bulb"){
                    bulbColor = .green
                }
                    
            }
        
    }
}


struct PresentingModally3_Previews: PreviewProvider{
    static var previews: some View {
        PresentingModally3()
    }
}
