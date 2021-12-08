//
//  CapsuleGridView.swift
//  SwiftUICapsuleCollectiin
//
//  Created by Keith Staines on 07/12/2021.
//

import SwiftUI

struct CapsuleGridView: View {
    
    @Binding var height: CGFloat
    let layout: CapsuleLayout
    
    var body: some View {
        VStack(alignment: .leading, spacing: layout.gap) {
            ForEach(0..<layout.capsulesDataByRow.count) { rowIndex in
                let rowData = layout.capsulesDataByRow[rowIndex]
                HStack(spacing: layout.gap) {
                    ForEach(rowData) { data in
                        CapsuleView(capsuleData: data)
                    }
                    Spacer()
                }
            }
        }
        .onAppear {
            height = layout.containerHeight
        }
    }
    
    init(containerWidth: CGFloat, capsulesData: [CapsuleData], height: Binding<CGFloat>) {
        self.layout = CapsuleLayout(containerWidth: containerWidth, capsulesData: capsulesData)
        self._height = height
    }
}

struct CapsuleGridView_Previews: PreviewProvider {
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
        GeometryReader { geo in
            CapsuleGridView(containerWidth: geo.size.width, capsulesData: capsulesData, height: .constant(0))
                .background(Color.white)
                .border(Color.red, width: 1)
                
        }
        .padding(30)
    }
}
