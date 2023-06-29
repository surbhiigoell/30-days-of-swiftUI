//
//  ContentView.swift
//  challenge 3
//
//  Created by Surbhi Goel on 29/06/23.
//

import SwiftUI

struct ContentView: View {
    
    let myArray = ["Jennie", "Rosie", "Lisa", "Jisoo"]
    @State var listArray:[Int] = [Int]()
    
    var body: some View {
        VStack {
            
            NavigationView{
                List (listArray, id: \.self) { member in
                    Text(myArray[member])
                }.navigationBarTitle("BlackPink")
            }
            
            Button {
                let rand = Int.random(in: 0...3)
                listArray.append(rand)
                
            } label: {
                Text("Add List Item")
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
