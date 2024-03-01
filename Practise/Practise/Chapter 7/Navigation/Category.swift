//
//  Category.swift
//  Practise
//
//  Created by Manvendu Pathak on 29/02/24.
//

import Foundation

enum Category: Int, Identifiable, CaseIterable, Hashable {
    case meat
    case vegetable
    case fruit
    var id: Int { rawValue }
    
    
    var name: String  {
        switch self {
        case .meat: "Meat"
        case .vegetable: "Vegetable"
        case .fruit: "Fruit"
        }
    }
}

struct FastFood: Identifiable, Hashable{
    let id = UUID()
    var name: String
    var category: Category
}
