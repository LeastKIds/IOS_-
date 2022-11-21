//
//  ContentView.swift
//  0014_LocalizationApp
//
//  Created by 김진홍 on 2022/11/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Text("Hello")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        
        Group {
            ContentView()
                .environment(\.locale, Locale(identifier: "en"))
            ContentView()
                .environment(\.locale, Locale(identifier: "ja"))
        }
        
    }
}
