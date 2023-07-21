//
//  pizzaRecipe.swift
//  challenge 12
//
//  Created by Surbhi Goel on 21/07/23.
//

import SwiftUI

struct pizzaRecipe: View {
    
    var pizza : Recipe
    
    var body: some View {
        ScrollView{
            HStack{
                Image(pizza.image)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 50, height: 50, alignment: .center)
                    .clipped()
                    .cornerRadius(5)
                VStack(alignment: .leading){
                    Text(pizza.name)
                        .font(.headline)
                    HStack {
                        ForEach(pizza.toppings, id: \.self) { t in
                            Text(t)
                        }
                    }.font(.caption)
                }
            }
        }.navigationTitle("All Pizzas")
    }
}

struct pizzaRecipe_Previews: PreviewProvider {
    static var previews: some View {
        
        let pizzaModel = RecipeModel()
        pizzaRecipe(pizza: pizzaModel.recipemodel[0])
    }
}
