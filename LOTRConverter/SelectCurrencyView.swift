//
//  SelectCurrencyView.swift
//  LOTRConverter
//
//  Created by Petr on 21.06.2025.
//

import SwiftUI

struct SelectCurrencyView: View {
    
    var body: some View {
        @Environment(\.dismiss) var dismiss
        
        ZStack {
            // background
            Image(.parchment)
                .resizable()
                .ignoresSafeArea()
                .background(.brown)
            
            VStack {
                // text
                Text("Select the currency you are starting with:")
                    .fontWeight(.bold)
                
                // currency icon
                LazyVGrid(columns: [GridItem(), GridItem(), GridItem()]) {
                    ForEach(0..<5) { _ in 
                        CurrencyIconView(currencyImage: .copperpenny, currencyName: "Copper Penny")
                    }
                }
                // text
                Text("Select the currency you would like to convert to:")
                    .fontWeight(.bold)
                    
                // currency icon
                CurrencyIconView(currencyImage: .copperpenny, currencyName: "Copper Penny")
                
                // done button
                Button("Done") {
                    dismiss()
                }
                .buttonStyle(.borderedProminent)
                .tint(.brown.mix(with: .black, by: 0.2))
                .font(.largeTitle)
                .padding()
                .foregroundStyle(.white)
            }
            .padding()
            .multilineTextAlignment(.center)
        }
    }
}

#Preview {
    SelectCurrencyView()
}
