//
//  ContentView.swift
//  challenge 12
//
//  Created by Surbhi Goel on 17/07/23.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var model = RecipeModel()
    var body: some View {
        
        ScrollView {
            VStack(alignment: .leading) {
                ForEach (model.recipemodel){ item in
                    pizzaRecipe(pizza: item)
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
