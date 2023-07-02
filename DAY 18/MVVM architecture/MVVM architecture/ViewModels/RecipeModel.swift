//
//  RecipeModel.swift
//  MVVM architecture
//
//  Created by Surbhi Goel on 02/07/23.
//

import Foundation

class RecipeModel {
    
    var recipeModel = [Recipe]()
    
    init() {
        
        recipeModel.append(Recipe(name: "Sushi", cuisine: "Japanese"))
        recipeModel.append(Recipe(name: "Pizza", cuisine: "Italian"))
    }
}
