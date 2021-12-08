//
//  ContentView.swift
//  SwiftUICapsuleCollectiin
//
//  Created by Keith Staines on 08/12/2021.
//


import SwiftUI

struct ContentView: View {
    
    @State var capsulesData = [
        "123",
        "123456789",
        "1234567890",
        "1234567",
        "1",
        "1234567890123456789"
    ].map { text in
        CapsuleData(text: text, capRadius: 20)
    }
    
    var body: some View {
        ScrollView {
            Text("Hello")
                .foregroundColor(.red)
            CapsuleCollectionView(data: capsulesData).border(Color.red).padding([.horizontal])
            Text("Hello")
                .foregroundColor(.red)
    
        }.background(Color.white.ignoresSafeArea())
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
