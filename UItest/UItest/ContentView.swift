//
//  ContentView.swift
//  UItest
//
//  Created by Surbhi Goel on 19/06/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        Text("Hello, world!")
            .foregroundColor(Color.white)
            .padding()
            .cornerRadius(/*@START_MENU_TOKEN@*/10.0/*@END_MENU_TOKEN@*/)
            .background(Color.green)
            .background(Color.blue)
            .cornerRadius(10)
            
            
            
            
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
