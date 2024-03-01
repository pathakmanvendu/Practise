//
//  LazyStacks.swift
//  Practise
//
//  Created by Manvendu Pathak on 26/02/24.
//

import SwiftUI

struct LazyStacks: View {
    var body: some View {
        VStack {
            ScrollView(.horizontal){
                LazyHStack{
                    ForEach(1...10000, id: \.self){ item in
                        ListRow(id: item, type: "Horizontal")
                    }
                }
            }.frame(height: 100, alignment: .center)
            
            ScrollView{
                LazyVStack{
                    ForEach(1...10000, id: \.self) { item in
                        ListRow(id: item, type: "Vertical")
                        
                    }
                }
            }
            
        }
    }
}

struct LazyStacks_Previews: PreviewProvider {
    static var previews: some View {
        LazyStacks()
    }
}

struct ListRow: View {
    let id: Int
    let type: String
    init(id: Int, type: String){
        print("Loading \(type) item \(id)")
        self.id = id
        self.type = type
    }
    var body: some View {
        Text("\(type) \(id)").padding()
    }
}
