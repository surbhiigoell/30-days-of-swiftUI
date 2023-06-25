//
//  ContentView.swift
//  SwiftUI Slots
//
//  Created by Surbhi Goel on 26/06/23.
//

import SwiftUI

struct ContentView: View {
    
    @State private var cred = 1000
    @State private var img_1 = 1
    @State private var img_2 = 1
    @State private var img_3 = 1
    
    var body: some View {
        VStack {
            Text("SwiftUI Slots!")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            Spacer()
            Text("Credits: \(cred)")
            Spacer()
            HStack{
                Image("img\(img_1)")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                Image("img\(img_2)")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                Image("img\(img_3)")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
            }
            
            Spacer()
            Button {
                img_1 = Int.random(in: 1...3)
                img_2 = Int.random(in: 1...3)
                img_3 = Int.random(in: 1...3)
                
                
                if (img_1 == img_2) && (img_2 == img_3){
                    cred+=15
                }else{
                    cred-=5
                }
                
            } label: {
                Text("Spin")
                    .font(.system(size: 18, weight: .bold, design: .default))
                    .fontWeight(.semibold)
                    .foregroundColor(Color.white)
                    .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                    .padding(.horizontal, 40.0)
                    .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color.red/*@END_MENU_TOKEN@*/)
                    .cornerRadius(25)
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
