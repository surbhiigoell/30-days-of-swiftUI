//
//  ContentView.swift
//  MVVM architecture
//
//  Created by Surbhi Goel on 02/07/23.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var model = RecipeModel()
    
    var body: some View {
        VStack(alignment: .leading) {
            
            List(model.recipeModel) { r in
                VStack {
                    Text(r.name)
                        .font(.title)
                    Text(r.cuisine)
                        .font(.callout)
                }
            }
            
            Button {
                model.addRecipe()
            } label: {
                Text("Add Recipe")
                    .multilineTextAlignment(.center)
            }

            
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
