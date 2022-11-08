//
//  ContentView.swift
//  0005_SliderApp
//
//  Created by 김진홍 on 2022/11/08.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
       
        HStack {
            Image(systemName: "speaker.fill")
            Slider(value:30)
            Image(systemName: "speaker.3.fill")
        }
        .accentColor(.gray)
        .foregroundColor(.gray)
        .padding(.all)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
