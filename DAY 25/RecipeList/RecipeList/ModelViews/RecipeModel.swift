//
//  RecipeModel.swift
//  RecipeList
//
//  Created by Surbhi Goel on 18/07/23.
//

import Foundation

class RecipeModel : ObservableObject {
    
    @Published var recipemodel = [Recipe]()
    
    init()
    {
        self.recipemodel = Data_Services.getLocalData()
    }
}
