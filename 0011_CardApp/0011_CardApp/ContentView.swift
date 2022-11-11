//
//  ContentView.swift
//  0011_CardApp
//
//  Created by 김진홍 on 2022/11/11.
//

import SwiftUI

struct ContentView: View {
    
    
    var cards = ["かばん": "bag",
                 "自動車": "car",
                 "誕生日": "birthday"]
    
    @State var japanes = "かばん"
    @State var isJapanes = true
    
    var body: some View {
        VStack {
            Text(isJapanes ? japanes : cards[japanes]!)
            
            HStack {
                Button(action: {self.isJapanes.toggle()}){
                    Text("裏返す")
                } //Button
                
                Button(action: {
                    self.isJapanes = true
                    self.japanes = self.cards.randomElement()!.key
                }){
                    Text("次へ")
                } // Button
            } // HStack
        } // VStack
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
