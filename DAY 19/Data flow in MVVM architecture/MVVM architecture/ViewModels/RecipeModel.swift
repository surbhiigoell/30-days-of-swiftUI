//
//  RecipeModel.swift
//  MVVM architecture
//
//  Created by Surbhi Goel on 02/07/23.
//

import Foundation

class RecipeModel : ObservableObject {
    
    @Published var recipeModel = [Recipe]()
    
    init() {
        
        recipeModel.append(Recipe(name: "Sushi", cuisine: "Japanese"))
        recipeModel.append(Recipe(name: "Pizza", cuisine: "Italian"))
    }
    
    func addRecipe() {
        recipeModel.append(Recipe(name: "Burger", cuisine: "American"))
    }
}
