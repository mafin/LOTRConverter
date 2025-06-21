//
//  SelectCurrencyView.swift
//  LOTRConverter
//
//  Created by Petr on 21.06.2025.
//

import SwiftUI

struct SelectCurrencyView: View {
    @Environment(\.dismiss) var dismiss
    @State var topCurrency: Currency
    @State var bottomCurrency: Currency
    
    var body: some View {
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
                IconGridView(selectedCurrency: topCurrency)
                // text
                Text("Select the currency you would like to convert to:")
                    .fontWeight(.bold)
                    .padding(.top)
                    
                // currency icon
                IconGridView(selectedCurrency: bottomCurrency)
                
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
            .foregroundStyle(.black)
        }
    }
}

#Preview {
    SelectCurrencyView(topCurrency: .silverPenny, bottomCurrency: .goldPenny)
}
