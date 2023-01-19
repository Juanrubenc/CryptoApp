//
//  Double.swift
//  Crypto
//
//  Created by Juan Ruben Castaneda Nino on 18/01/23.
//

import SwiftUI

extension Double {
     
    private var currencyFormater: NumberFormatter {
        let formatter = NumberFormatter()
        formatter.usesGroupingSeparator = true
        formatter.numberStyle = .currency
        formatter.minimumFractionDigits = 2
        formatter.maximumFractionDigits = 2
        return formatter
    }
    
    private var numberFomatter: NumberFormatter{
        let formatter = NumberFormatter()
        formatter.numberStyle = .decimal
        formatter.minimumFractionDigits = 2
        formatter.maximumFractionDigits = 2
        return formatter
    }
    
    func tocCurrency() -> String {
        return currencyFormater.string(for: self) ?? "$0.00"
    }
    
    func toPercentageString() ->String {
        return (numberFomatter.string(for: self) ?? "") + "%"
    }
}
