//
//  CurrencyTip.swift
//  LOTRConverter
//
//  Created by Petr on 22.06.2025.
//

import TipKit

public struct CurrencyTip: Tip {
    public var title = Text("Change Currency")
    
    public var message: Text? = Text("You can tap the left or right currency to bring up the Select Currency screen.")
    
    public var image: Image? = Image(systemName: "hand.tap.fill")
}
