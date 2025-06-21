//
//  ExchageRarteView.swift
//  LOTRConverter
//
//  Created by Petr on 21.06.2025.
//

import SwiftUI

struct ExchangeRateView: View {
    let leftImage: ImageResource
    let textInfo: String
    let rightImage: ImageResource
    
    var body: some View {
        HStack {
            // left
            Image(leftImage)
                .resizable()
                .scaledToFit()
                .frame(height: 33)
            
            // exchage
            Text(textInfo)
            
            // right
            Image(rightImage)
                .resizable()
                .scaledToFit()
                .frame(height: 33)
        }
    }
}

#Preview {
    ExchangeRateView(
        leftImage: .silverpiece,
        textInfo: "1 Silver Piece = 4 Silver Pennies",
        rightImage: .silverpenny
    )
}
