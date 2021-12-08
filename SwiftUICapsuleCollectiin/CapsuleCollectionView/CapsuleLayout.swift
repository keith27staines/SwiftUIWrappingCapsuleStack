//
//  CapsuleLayout.swift
//  SwiftUICapsuleCollectiin
//
//  Created by Keith Staines on 07/12/2021.
//

import Foundation
import SwiftUI

class CapsuleLayout {
    var containerWidth: CGFloat
    var containerHeight: CGFloat
    var allCapsulesData: [CapsuleData]
    var capsulesDataByRow: [[CapsuleData]] = []
    var rows: Int { capsulesDataByRow.count }
    var gap: CGFloat = 12
    
    init(containerWidth: CGFloat, capsulesData: [CapsuleData]) {
        self.containerWidth = containerWidth
        self.allCapsulesData = capsulesData
        self.containerHeight = 0
        layout()
    }
    
    private func layout() {
        var currentRowData = [CapsuleData]()
        var currentRowWidth: CGFloat = 0
        var rowHeight: CGFloat = 0
        
        for data in allCapsulesData {
            let nextElementWidth = data.width + ((currentRowData.count == 0) ? CGFloat.zero : gap)
            rowHeight = data.capRadius * 2
            if nextElementWidth < containerWidth - currentRowWidth {
                currentRowData.append(data)
                currentRowWidth += nextElementWidth
            } else {
                capsulesDataByRow.append(currentRowData)
                currentRowData = [data]
                currentRowWidth = data.width
            }
        }
        if !currentRowData.isEmpty {
            capsulesDataByRow.append(currentRowData)
        }
        let rows = capsulesDataByRow.count
        containerHeight =  CGFloat(rows) * rowHeight + CGFloat((rows - 1)) * gap
    }
}
