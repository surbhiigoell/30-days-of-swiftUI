//
//  RecipeModel.swift
//  challenge 12
//
//  Created by Surbhi Goel on 17/07/23.
//

import Foundation

class RecipeModel : ObservableObject {
    
    @Published var recipemodel = [Recipe]()
    
    init()
    {
        let pathString = Bundle.main.path(forResource: "data", ofType: "json")
        
        if let path = pathString {
            
            let url = URL(fileURLWithPath: path)
            
            do
            {
                let data = try Data(contentsOf: url)
                
                let decoder = JSONDecoder()
                
                do{
                    let recipedata = try decoder.decode([Recipe].self, from: data)
                    
                    for index in 0..<recipedata.count {
                        recipedata[index].id = UUID()
                    }
                    
                    self.recipemodel = recipedata
                }
                catch{
                    print(error)
                }
            }
            catch
            {
                print(error)
            }
            
            
        }
    }
    
}
