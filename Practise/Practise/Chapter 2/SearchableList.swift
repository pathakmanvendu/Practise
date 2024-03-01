//
//  SearchableList.swift
//  Practise
//
//  Created by Manvendu Pathak on 24/02/24.
//

import SwiftUI


struct Food: Hashable {
    enum Category: String {
        case fruit
        case meat
        case vegetable
    }
    var name: String
    var category: Category
}


extension Food {
    static let sampleFood: [Food] = [
        Food(name: "Apple", category: .fruit),
        Food(name: "Pear", category: .fruit),
        Food(name: "Orange", category: .fruit),
        Food(name: "Lemon", category: .fruit),
        Food(name: "Plum", category: .fruit),
        Food(name: "Banana", category: .fruit),
        Food(name: "Melon", category: .fruit),
        Food(name: "Fish", category: .meat),
        Food(name: "Turkey", category: .meat),
        Food(name: "Crab", category: .meat),
        Food(name: "Carrot", category: .vegetable),
        Food(name: "Onion", category: .vegetable),
        Food(name: "Brocolli", category: .vegetable),
        Food(name: "Eggplant", category: .vegetable),
        Food(name: "Spinach", category: .vegetable),
        Food(name: "Zucchini", category: .vegetable),
        Food(name: "Goat", category: .meat),
        Food(name: "Pork", category: .meat),
        Food(name: "Lamb", category: .meat),
        Food(name: "Beef", category: .meat),
        Food(name: "Watermelon", category: .fruit),
    ]
}
struct SearchableList: View {
    @State private var searchText = ""
    let food: [Food] = Food.sampleFood
    var body: some View {
        NavigationStack {
            List {
                ForEach(searchResults, id:\.self) { food in
                    LabeledContent(food.name) { Text("\(food.category.rawValue)")
                        
                    }
                }
            }
            .searchable(text: $searchText, prompt: "Search for a food")
            .navigationTitle("Foods")
        }
    }
    
    var searchResults: [Food] {
        if searchText.isEmpty {
            return food
        } else{
            return food.filter { $0.name.lowercased().contains(searchText.lowercased())
                
            }
        }
    }
}

struct SearchableList_Previews: PreviewProvider {
    static var previews: some View {
        SearchableList()
    }
}
