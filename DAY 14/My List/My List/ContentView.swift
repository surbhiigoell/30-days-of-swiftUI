//
//  ContentView.swift
//  My List
//
//  Created by Surbhi Goel on 29/06/23.
//

import SwiftUI

struct ContentView: View {
    
    let myArray = ["Element1","Element2","Element3","Element4","Element5"]
    
    var body: some View {
        
        NavigationView{
            List (myArray, id: \.self) { arrayElement in
                
                NavigationLink {
                    Text("Destination")
                } label: {
                    Text(arrayElement)
                }
                
            }.navigationBarTitle("My List")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
