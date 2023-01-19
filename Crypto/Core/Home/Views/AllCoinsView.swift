//
//  AllCoinsView.swift
//  Crypto
//
//  Created by Juan Ruben Castaneda Nino on 16/01/23.
//

import SwiftUI

struct AllCoinsView: View {
    @StateObject var viewModel: HomeviewModel
    
    var body: some View {
        VStack(alignment: .leading){
            Text("All Coins")
                  .font(.headline)
                  .padding()
            HStack{
                Text("Coin")
                Spacer()
                Text("Price")
            }
            .font(.caption)
            .foregroundColor(.gray)
            .padding(.horizontal)
            
            ScrollView{
                VStack(alignment: .leading) {
                    ForEach(viewModel.coins) { coin in
                        CoinRowView(coin: coin)
                    }
                }
          }
        }
    }
}

