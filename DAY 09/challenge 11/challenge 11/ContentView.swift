//
//  ContentView.swift
//  challenge 11
//
//  Created by Surbhi Goel on 25/06/23.
//

import SwiftUI

struct ContentView: View {
    
    @State var number=0
    var body: some View {
        VStack {
            Spacer()
            Text(String(number))
            Spacer()
            Button {
                number+=2
            } label: {
                Text("button 1")
            }
            Spacer()
            Button {
                number*=2
            } label: {
                Text("button 2")
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
