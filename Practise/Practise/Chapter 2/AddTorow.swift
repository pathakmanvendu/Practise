//
//  AddTorow.swift
//  Practise
//
//  Created by Manvendu Pathak on 24/02/24.
//

import SwiftUI

struct AddTorow: View {
    @State private var number = [1,2,3,4,5]
    var body: some View {
        NavigationStack {
            List {
                ForEach(number, id: \.self){ nums in
                    Text("\(nums)")
                }
                .onMove(perform: moveRow)
            }
            .navigationTitle("Number List")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar{
                ToolbarItem{
                    Button {
                        addnumber()
                    } label: {
                        Text("Add")
                    }

                }
            }
        }
    }
    
    func addnumber() {
        number.append(Int.random(in: 5..<100))
    }
    
    private func moveRow(source: IndexSet, destination: Int){
        number.move(fromOffsets: source, toOffset: destination)
    }
}

struct AddTorow_Previews: PreviewProvider {
    static var previews: some View {
        AddTorow()
    }
}
