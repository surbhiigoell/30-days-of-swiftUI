//
//  ContentView.swift
//  war challenge
//
//  Created by Surbhi Goel on 20/06/23.
//

import SwiftUI

struct ContentView: View {
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
                    Image("card3")
                    Spacer()
                    Image("card4")
                    Spacer()
                }
                .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                Spacer()
                Image("dealbutton")
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
                        Text("0")
                        Spacer()
                        Text("0")
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
