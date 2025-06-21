//
//  ExchageInfoView.swift
//  LOTRConverter
//
//  Created by Petr on 21.06.2025.
//

import SwiftUI

struct ExchangeInfoView: View {
    var body: some View {
        ZStack {
            // background
            Image(.parchment)
                .resizable()
                .ignoresSafeArea()
                .background(.brown)
            
            VStack {
                //title
                Text("Exchange Rates")
                    .font(.largeTitle)
                    .tracking(3)
                
                //desctiption
                Text("Here at the Prancing Pony, we are happy to offer you a place where you can exchange all the known currencies in the entire world except one. We used to take Brandy Bucks, but after finding out that it was a person instead of a piece of paper, we realized it had no value to us. Below is a simple guide to our currency exchange rates:")
                    .font(.title3)
                    .padding()
                //exchage rate
                ExchangeRateView(
                    leftImage: .goldpiece,
                    textInfo: "1 Gold Piece = 4 Gold Pennies",
                    rightImage: .goldpenny
                )
                ExchangeRateView(
                    leftImage: .goldpenny,
                    textInfo: "1 Gold Penny = 4 Silver Pieces",
                    rightImage: .silverpiece
                )
                
                ExchangeRateView(
                    leftImage: .silverpiece,
                    textInfo: "1 Silver Piece = 4 Silver Pennies",
                    rightImage: .silverpenny
                )
                
                ExchangeRateView(
                    leftImage: .silverpenny,
                    textInfo: "1 Silver Penny = 100 Copper pennies",
                    rightImage: .copperpenny
                )
                
                //done button
                Button("Done") {
                    
                }
                .buttonStyle(.borderedProminent)
                .tint(.brown.mix(with: .black, by: 0.2))
                .font(.largeTitle)
                .padding()
                .foregroundStyle(.white)
            }
            .foregroundStyle(.black)
        }
    }
}

#Preview {
    ExchangeInfoView()
}
