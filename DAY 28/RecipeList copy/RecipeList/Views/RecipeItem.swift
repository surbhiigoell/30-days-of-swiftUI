//
//  RecipeItem.swift
//  RecipeList
//
//  Created by Surbhi Goel on 21/07/23.
//

import SwiftUI

struct RecipeItem: View {
    
    var recipe:Recipe
    
    var body: some View {
        
        ScrollView{
            
            VStack(alignment: .leading){
                
                Image(recipe.image)
                    .resizable()
                    .scaledToFill()
                
                VStack(alignment: .leading){
                    Text("Ingredients")
                        .font(.headline)
                        .padding(.vertical, 5.0)
                    
                    ForEach (recipe.ingredients, id: \.self) { item in
                        Text("~ " + item)
                    }.padding(.bottom, 3)
                }
                .padding(.horizontal, 10.0)
                
                VStack(alignment: .leading){
                    Text("Directions")
                        .font(.headline)
                        .padding(.vertical, 5.0)
                    
                    ForEach (0..<recipe.directions.count, id: \.self) { index in
                        Text(String(index+1) + ". " + recipe.directions[index])
                    }.padding(.bottom, 3)
                }
                .padding(.horizontal, 10.0)
            }
        }
        .navigationBarTitle(recipe.name)
    }
}

struct RecipeItem_Previews: PreviewProvider {
    static var previews: some View {
        
        let model = RecipeModel()
        RecipeItem(recipe: model.recipemodel[0])
    }
}
