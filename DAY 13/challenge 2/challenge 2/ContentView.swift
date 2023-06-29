//
//  ContentView.swift
//  challenge 2
//
//  Created by Surbhi Goel on 29/06/23.
//

import SwiftUI

struct PlayingCard {
    
    var trackNumber = 1
    var trackSuit = 0
    
}

struct ContentView: View {
    
    @State private var deck:[PlayingCard] = [PlayingCard]()
    
    @State private var copy:[String] = [String]()
    
    let suit = ["Spades", "Clubs", "Hearts", "Diamonds"]
    
    @State private var message = ""
    
    var body: some View {
        VStack {
            
            Text(message)
            
            HStack{
                Button {
                    addCard()
                    
                } label: {
                    Text("Button 1")
                }
                
                Button {
                    drawCard()
                } label: {
                    Text("Button 2")
                }

            }
        }
        .padding()
    }
    
    func addCard() {
        let num = Int.random(in: 1...13)
        let sui = Int.random(in: 0...3)
        
        var a: PlayingCard = PlayingCard()
        a.trackNumber = num
        a.trackSuit = sui
        
        let newCard = getcardName(a.trackNumber) + "/" + String(a.trackSuit)
        
        if copy.contains(newCard)
        {
            message = "Generated duplicate card."
        }
        else {
            copy.append(newCard)
            deck.append(a)
            message = "Generated a \(getcardName(a.trackNumber)) of \(suit[a.trackSuit])"
        }
    }
    
    func drawCard() {
        let count = deck.count
        if count==0{
            message = "No cards in the deck."
        }
        else{
            let randCard = Int.random(in: 0...count-1)
            
            let existingCard = deck[randCard]
            message = "Drew a \(getcardName(existingCard.trackNumber)) of \(suit[existingCard.trackSuit])"
        }
    }
    
    func getcardName(_ num: Int) -> String {
        if num==1 {
            return "Ace"
        }
        else if num==11 {
            return "Jack"
        }
        else if num==12 {
            return "Queen"
        }
        else if num==13 {
            return "King"
        }
        else {
            return String(num)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
