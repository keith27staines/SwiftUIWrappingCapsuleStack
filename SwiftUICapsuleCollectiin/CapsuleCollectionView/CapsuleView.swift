//
//  CapsuleView.swift
//  SwiftUICapsuleCollectiin
//
//  Created by Keith Staines on 07/12/2021.
//

import SwiftUI

struct CapsuleView: View {
    
    var capsuleData: CapsuleData
    
    var body: some View {
        Capsule()
            .strokeBorder()
            .foregroundColor(.gray)
            .frame(
                width: capsuleData.width,
                height: capsuleData.capRadius * 2
            )
            .overlay(
                Text(capsuleData.text)
                    .font(
                        .system(
                            size: capsuleData.textSize,
                            weight: .regular,
                            design: .default
                        )
                    )
                    .foregroundColor(.gray)
            )

    }
}

struct CapsuleView_Previews: PreviewProvider {
    static var previews: some View {
        let data = CapsuleData(text: "Hello", capRadius: 20)
        CapsuleView(capsuleData: data)
    }
}
