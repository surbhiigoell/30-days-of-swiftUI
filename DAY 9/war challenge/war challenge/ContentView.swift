//
//  ContentView.swift
//  war challenge
//
//  Created by Surbhi Goel on 20/06/23.
//

import SwiftUI

struct ContentView: View {
    
    @State private var playerCard="back"
    @State private var cpuCard="back"
    @State private var playerScore=0
    @State private var cpuScore=0
    
    var body: some View {
        ZStack {
            Image("background")
                .ignoresSafeArea()
                
            VStack{
                Spacer()
                Image("logo")
                Spacer()
                HStack(alignment: .center){
                    Spacer()
                    Image(playerCard)
                    Spacer()
                    Image(cpuCard)
                    Spacer()
                }
                .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                Spacer()
                Button {
                    
                    let playerRand = Int.random(in: 2...14)
                    let cpuRand = Int.random(in: 2...14)
                    
                    playerCard = "card" + String(playerRand)
                    cpuCard = "card" + String(cpuRand)
                    
                    playerScore+=1
                    cpuScore+=1
                    
                } label: {
                    Image("dealbutton")
                }
                Spacer()
                VStack{
                    HStack{
                        Spacer()
                        Text("Player")
                        Spacer()
                        Text("CPU")
                        Spacer()
                    }
                    .foregroundColor(/*@START_MENU_TOKEN@*/.white/*@END_MENU_TOKEN@*/)
                    .padding(.bottom, 10.0)
                    .font(.headline)
                    
                    HStack{
                        Spacer()
                        Text(String(playerScore))
                        Spacer()
                        Text(String(cpuScore))
                        Spacer()
                    }
                    .foregroundColor(/*@START_MENU_TOKEN@*/.white/*@END_MENU_TOKEN@*/)
                    .font(/*@START_MENU_TOKEN@*/.largeTitle/*@END_MENU_TOKEN@*/)
                }
                Spacer()
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
