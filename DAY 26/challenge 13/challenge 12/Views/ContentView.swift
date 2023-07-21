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
        
        List(model.recipemodel) {r in
            HStack{
                Image(r.image)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 50, height: 50, alignment: .center)
                    .clipped()
                    .cornerRadius(5)
                VStack(alignment: .leading){
                    Text(r.name)
                        .font(.headline)
                    HStack {
                        Text(r.toppings[0])
                        Text(r.toppings[1])
                        Text(r.toppings[2])
                    }.font(.caption)
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
