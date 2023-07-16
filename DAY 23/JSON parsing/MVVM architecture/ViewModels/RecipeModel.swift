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
        
        let pathString = Bundle.main.path(forResource: "data", ofType: "json")
        
        if let path = pathString {
            
            let url = URL(fileURLWithPath: path)
            
            do{
                let data = try Data(contentsOf: url)
                
                let decoder = JSONDecoder()
                
                do{
                    let recipedata = try decoder.decode([Recipe].self, from: data)
                    
                    for r in recipedata{
                        r.id = UUID()
                    }
                    
                    self.recipeModel = recipedata
                }
                catch{
                    print(error)
                }
            }
            catch{
                print(error)
            }
        }
        
    }
    
    func addRecipe() {
        
    }
}
