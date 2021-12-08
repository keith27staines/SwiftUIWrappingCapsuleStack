//
//  CapsuleCollectionView.swift
//  SwiftUICapsuleCollectiin
//
//  Created by Keith Staines on 07/12/2021.
//

import SwiftUI

struct CapsuleCollectionView: View {
    
    @State private var height: CGFloat = 0
    
    var data: [CapsuleData]
    
    var body: some View {
        GeometryReader { geo in
            CapsuleGridView(containerWidth: geo.size.width, capsulesData: data, height: $height)
                .background(Color.white)
                .frame(height: height)
        }.frame(height: height)
    }
}

struct CapsuleCollectionView_Previews: PreviewProvider {
    static var previews: some View {
        let capsulesData = [
            "123",
            "123456789",
            "1234567890",
            "1234567",
            "1",
            "1234567890123456789"
        ].map { text in
            CapsuleData(text: text, capRadius: 20)
        }
        CapsuleCollectionView(data: capsulesData)
            .padding()
    }
}
