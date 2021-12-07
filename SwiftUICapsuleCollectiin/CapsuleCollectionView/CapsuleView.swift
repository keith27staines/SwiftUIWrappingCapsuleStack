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
        Text(capsuleData.text)
            .font(
                .system(
                    size: 20,
                    weight: .regular,
                    design: .default
                )
            )
            .frame(
                width: capsuleData.width,
                height: capsuleData.capRadius * 2
            )
            .background(
                Capsule()
                    .strokeBorder()
            )

    }
}

struct CapsuleView_Previews: PreviewProvider {
    static var previews: some View {
        let data = CapsuleData(text: "Hello", capRadius: 10)
        CapsuleView(capsuleData: data)
    }
}
