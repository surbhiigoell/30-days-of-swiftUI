//
//  ContentView.swift
//  challenge 7
//
//  Created by Surbhi Goel on 02/07/23.
//

import SwiftUI

struct ContentView: View {
    
    var model = PizzaModel()
    
    var body: some View {
        VStack {
            List(model.pizzaModel) { p in
                VStack(alignment: .leading) {
                    Text(p.name)
                        .font(.title)
                    HStack{
                        Text(p.topping1)
                        Text(p.topping2)
                        Text(p.topping3)
                    }
                }
                
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
