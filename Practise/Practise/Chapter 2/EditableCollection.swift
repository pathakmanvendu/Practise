//
//  EditableCollection.swift
//  Practise
//
//  Created by Manvendu Pathak on 24/02/24.
//

import SwiftUI

struct TodoItem: Identifiable {
    let id = UUID()
    var title: String
}

struct EditableCollection: View {
    @State private var todos = [
     TodoItem(title: "Eat"),
     TodoItem(title: "Sleep"),
     TodoItem(title: "Code")
    ]
    var body: some View {
        List($todos) { $todo in
            TextField("Todo Item", text: $todo.title)
            
        }
    }
}

struct EditableCollection_Previews: PreviewProvider {
    static var previews: some View {
        EditableCollection()
    }
}
