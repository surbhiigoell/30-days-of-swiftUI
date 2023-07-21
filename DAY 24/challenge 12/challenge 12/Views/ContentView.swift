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
                Text("json")
                VStack{
                    Text(r.name)
                        .font(.headline)
                    HStack {
                        Text(r.toppings[0])
                        Text(r.toppings[1])
                        Text(r.toppings[2])
                    }.font(.caption)
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
