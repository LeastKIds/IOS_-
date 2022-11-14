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
        ZStack {
            Color(red: 0.97, green: 0.96, blue: 0.56)
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                
                ZStack {
                    Image("card")
                        .resizable()
                        .frame(width: 300.0, height: 133.0)
                        .shadow(radius: 3)
                        .rotation3DEffect(.degrees(isJapanes ? 0 : 180), axis: (x: 0, y: 1, z: 0))
                        .animation(.spring())
                        .onTapGesture {
                            self.isJapanes.toggle()
                        }
                    
                    Text(isJapanes ? japanes : cards[japanes]!)
                        .font(.largeTitle)
                    
                }   // ZStack
                .padding()
                
                HStack {
                    Group {
                        Button(action: {self.isJapanes.toggle()}){
                            Image(systemName: "arrow.2.circlepath")
                            Text("裏返す")
                        } //Button
                        
                        Button(action: {
                            self.isJapanes = true
                            self.japanes = self.cards.randomElement()!.key
                        }){
                            Image(systemName: "forward.fill")
                            Text("次へ")
                        } // Button
                    }   // Gruop
                    .padding()
                    .foregroundColor(.white)
                    .background(Color(red: 0.86, green: 0.45, blue: 0.03))
                    .cornerRadius(10)
                    
                } // HStack
            } // VStack
            
            
        }   // ZStack
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
