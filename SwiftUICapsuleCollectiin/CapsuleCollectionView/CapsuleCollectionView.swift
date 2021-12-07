//
//  CapsuleCollectionView.swift
//  SwiftUICapsuleCollectiin
//
//  Created by Keith Staines on 07/12/2021.
//

import SwiftUI

class CapsuleCollectionViewModel: ObservableObject {

    var capsules = [
        "123",
        "123456789",
        "1234567890",
        "1234567",
        "1",
        "1234567890123456789"
    ].map { text in
        CapsuleData(text: text, capRadius: 10)
    }
    
}

struct CapsuleCollectionView: View {
    
    @ObservedObject var vm = CapsuleCollectionViewModel()
    
    var body: some View {
        ForEach(vm.capsules) { capsuleData in
            CapsuleView(capsuleData: capsuleData)
        }
    }
}

struct CapsuleCollectionView_Previews: PreviewProvider {
    static var previews: some View {
        CapsuleCollectionView()
    }
}
