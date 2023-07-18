//
//  Json_decoder.swift
//  RecipeList
//
//  Created by Surbhi Goel on 18/07/23.
//

import Foundation

class Data_Services {
    
    static func getLocalData() -> [Recipe] {
        
        let pathString = Bundle.main.path(forResource: "recipes", ofType: "json")
        
        guard pathString != nil else {
            return [Recipe]()
        }
        
        let url = URL(fileURLWithPath: pathString!)
        
        do {
            let data = try Data(contentsOf: url)
            
            let decoder = JSONDecoder()
            
            do{
                let recipesData = try decoder.decode([Recipe].self, from: data)
                
                for r in recipesData{
                    r.id = UUID()
                }
                return recipesData
            }
            catch{
                print(error)
            }
        }
        catch{
            print(error)
        }
        return [Recipe]()
    }
}
