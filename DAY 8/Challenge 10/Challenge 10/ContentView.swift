//
//  ContentView.swift
//  Challenge 10
//
//  Created by Surbhi Goel on 24/06/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack {
            Spacer()
            Button {
                print("Hello World : Button 1")
            } label: {
                Text("Click Me")
            }
            Spacer()
            Button {
                print("Hello World : Button 2")
            } label: {
                
                HStack {
                    Image(systemName: "play.fill")
                    Text("Click Me")
                }
            }
            Spacer()

        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
