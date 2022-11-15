//
//  ContentView.swift
//  0012_CameraApp
//
//  Created by 김진홍 on 2022/11/14.
//

import SwiftUI

struct ContentView: View {
    
    @State var image: Image?
    @State var isPicking = false
    
    var body: some View {
        ZStack {
            VStack {
                VStack {
                    Spacer()
                    image?
                        .resizable()
                        .scaledToFit()
                    Spacer()
                }   // VStack
                
                HStack {
                    Spacer()
                    Button(action: {
                        self.isPicking = true
                    }) {
                        Image(systemName: "camera")
                        Text("カメラ")
                    }
                    .padding()
                }   // HStack
            }   // VStack
            
            if isPicking {
                Rectangle()
                    .edgesIgnoringSafeArea(.all)
                    .transition(.move(edge: .bottom))
                    .animation(.easeInOut)
            }   // if isPicking
            
        }   // ZStack
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
