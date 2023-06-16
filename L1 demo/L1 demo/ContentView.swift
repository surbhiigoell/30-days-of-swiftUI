//
//  ContentView.swift
//  L1 demo
//
//  Created by Surbhi Goel on 16/06/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        ZStack{
            Color(.black)
                .ignoresSafeArea()
            VStack {
                Image("wallpaper")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .cornerRadius(11)
                    .padding(.all)
                Text("Wall paper")
                    .font(.largeTitle)
                    .fontWeight(.semibold)
                    .foregroundColor(Color.white)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
