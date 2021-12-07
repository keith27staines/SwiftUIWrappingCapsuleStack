//
//  CapsuleData.swift
//  SwiftUICapsuleCollectiin
//
//  Created by Keith Staines on 07/12/2021.
//

import SwiftUI

struct CapsuleData: Identifiable {
    let id = UUID()
    let textSize: CGFloat = 20
    
    var text: String
    var capRadius: CGFloat
    
    var font: UIFont { UIFont.systemFont(ofSize: textSize, weight: .regular) }
    var textWidth: CGFloat {
        text.widthOfString(usingFont: font)
    }
    
    var width: CGFloat { textWidth + 2 * capRadius }
    
    var height: CGFloat { 2 * capRadius }
}


extension String {

    func widthOfString(usingFont font: UIFont) -> CGFloat {
        let fontAttributes = [NSAttributedString.Key.font: font]
        let size = self.size(withAttributes: fontAttributes)
        return size.width
    }

    func heightOfString(usingFont font: UIFont) -> CGFloat {
        let fontAttributes = [NSAttributedString.Key.font: font]
        let size = self.size(withAttributes: fontAttributes)
        return size.height
    }

    func sizeOfString(usingFont font: UIFont) -> CGSize {
        let fontAttributes = [NSAttributedString.Key.font: font]
        return self.size(withAttributes: fontAttributes)
    }
}
