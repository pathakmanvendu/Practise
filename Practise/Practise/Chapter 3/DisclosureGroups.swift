//
//  DisclosureGroups.swift
//  Practise
//
//  Created by Manvendu Pathak on 26/02/24.
//

import SwiftUI

struct DisclosureGroups: View {
    @State private var showPlanets = true
    var body: some View {
        VStack{
            DisclosureGroup("Planets", isExpanded: $showPlanets) {
                Text("Mercury")
                Text("Venus")
                DisclosureGroup("Earth") {
                    Text("North America")
                    Text("South America")
                    Text("Europe")
                    Text("Africa")
                    Text("Antartica")
                    Text("Oceania")
                }
            }
        }.padding()
    }
}

struct DisclosureGroups_Previews: PreviewProvider {
    static var previews: some View {
        DisclosureGroups()
    }
}
