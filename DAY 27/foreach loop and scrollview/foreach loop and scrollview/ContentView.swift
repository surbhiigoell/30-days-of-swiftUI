//
//  ContentView.swift
//  foreach loop and scrollview
//
//  Created by Surbhi Goel on 19/07/23.
//

import SwiftUI

struct ContentView: View {
    
    var array = ["pizza", "sushi", "burger"]
    
    var body: some View {
        ScrollView {
            
            ForEach (array, id: \.self){ t in
                Text(t)
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
