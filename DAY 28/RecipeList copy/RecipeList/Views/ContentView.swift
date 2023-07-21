//
//  ContentView.swift
//  RecipeList
//
//  Created by Surbhi Goel on 18/07/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        @ObservedObject var model = RecipeModel()
        
        NavigationView {
            List(model.recipemodel) { r in
                
                NavigationLink {
                    RecipeItem(recipe: r)
                } label: {
                    HStack(spacing: 20.0) {
                        Image(r.image)
                            .resizable()
                            .scaledToFill()
                            .frame(width: 50,height: 50,alignment: .center)
                            .clipped()
                            .cornerRadius(5)
                        Text(r.name)
                    }
                }
            }
            .navigationBarTitle("Recipe List")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
