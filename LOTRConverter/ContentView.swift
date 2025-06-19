//
//  ContentView.swift
//  LOTRConverter
//
//  Created by Petr on 18.06.2025.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            // backgound image
            Image(.background)
                .resizable()
                .ignoresSafeArea()
            
            VStack {
                // pony image
                Image(.prancingpony)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 200)
                
                // currnecy exchage
                Text("Currency Exchage")
                    .font(.largeTitle)
                    .foregroundStyle(.white)
                
                //conversion section
                HStack {
                    // left section
                    VStack {
                        // currency
                        HStack {
                            // currency image
                            Image(.silverpiece)
                                .resizable()
                                .scaledToFit()
                                .frame(height: 33)
                            
                            // currency text
                            Text("Silver Piece")
                                .font(.headline)
                                .foregroundStyle(.white)
                        }
                        
                        //text field
                        Text("Text Field")
                        
                    }
                    //equel
                    Image(systemName: "equal")
                        .font(.largeTitle)
                        .foregroundStyle(.white)
                        .symbolEffect(.pulse)
                    
                    //right section
                    VStack {
                        // currency
                        HStack {
                            // currency text
                            Text("Gold Piece")
                                .font(.headline)
                                .foregroundStyle(.white)
                            
                            // currency image
                            Image(.goldpiece)
                                .resizable()
                                .scaledToFit()
                                .frame(height: 33)
                        }
                        
                        //text field
                        Text("Text Field")
                    }
                }
                
                Spacer()
                
                // info button
                Image(systemName: "info.circle.fill")
                    .font(.largeTitle)
                    .foregroundStyle(.white)
            }
        }
    }
}

#Preview {
    ContentView()
}
