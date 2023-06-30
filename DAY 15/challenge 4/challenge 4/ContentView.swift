//
//  ContentView.swift
//  challenge 4
//
//  Created by Surbhi Goel on 30/06/23.
//

import SwiftUI

struct ContentView: View {
    
    @State private var myArray:[Int] = [Int]()
    
    var body: some View {
        VStack {
            List (myArray, id: \.self) { element in
                Text(String(element))
            }
            
            Button {
                var num:Int = 0
                repeat {
                    num = Int.random(in: 1...10)
                    myArray.append(num)
                } while num != 7
            } label: {
                Text("Button 1")
            }
            
            Button {
                for index in 0...myArray.count-1 {
                    myArray[index]+=1
                }
            } label: {
                Text("Button 2")
            }
            
            Button {
                myArray.removeAll()
            } label: {
                Text("Button 3")
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
