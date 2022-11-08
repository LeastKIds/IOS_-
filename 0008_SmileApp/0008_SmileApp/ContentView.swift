//
//  ContentView.swift
//  0008_SmileApp
//
//  Created by 김진홍 on 2022/11/08.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Image(systemName: "smiley")
            .resizable()
            .foregroundColor(.green)
            .padding(.all)
            .scaledToFit()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
