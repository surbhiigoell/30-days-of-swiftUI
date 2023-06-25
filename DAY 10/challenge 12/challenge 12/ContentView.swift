//
//  ContentView.swift
//  challenge 12
//
//  Created by Surbhi Goel on 25/06/23.
//

import SwiftUI

struct ContentView: View {
    
    @State private var number=0
    @State private var flag=true
    
    var body: some View {
        VStack {
            
            Text(String(number))
            
            Button {
                if(number<50 && flag==true)
                {
                    flag=true
                    let rand = Int.random(in: 1...10)
                    number+=rand
                }
                else if(number>0)
                {
                    flag=false
                    let rand = Int.random(in: 1...10)
                    number-=rand
                }
                else if(number<=0)
                {
                    flag=true
                }
            } label: {
                Text("Click Me")
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
