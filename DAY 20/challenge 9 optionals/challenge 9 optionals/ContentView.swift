//
//  ContentView.swift
//  challenge 9 optionals
//
//  Created by Surbhi Goel on 02/07/23.
//

import SwiftUI

struct ContentView: View {
    
    @State var array:[String]?
    
    var body: some View {
        VStack {
            Button("button 1") {
                array = nil
            }
            
            Button("button 2") {
                //have to create an array instance first then only can we append to a nil array
                array = [String]()
                array?.append("jennie")
                array?.append("ruby")
                array?.append("jane")
            }
            
            if let y = array {
                List(y, id: \.self) {a in
                    Text(a)
                }
            }
            else {
                Text("Tap the second Button")
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
