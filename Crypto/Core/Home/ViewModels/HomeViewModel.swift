//
//  HomeViewModel.swift
//  Crypto
//
//  Created by Juan Ruben Castaneda Nino on 16/01/23.
//

import SwiftUI

class HomeviewModel: ObservableObject {
    @Published var coins = [Coin]()
    
    
    init(){
        fetchCoinData()
    }
    
    func fetchCoinData(){
        let urlString = "https://api.coingecko.com/api/v3/coins/markets?vs_currency=usd&order=market_cap_desc&per_page=100&page=1&sparkline=true&price_change_percentage=24h"
        
        guard let url = URL(string: urlString) else {return}
        
        URLSession.shared.dataTask(with: url){data, response, error in
            if let error = error {
                print("DEBUG: ERROR \(error.localizedDescription)")
            }
            if let response = response as? HTTPURLResponse {
                print("DEBUG: Response code \(response.statusCode)")
            }
            guard data != nil else { return }
            
        do{
            let coins = try JSONDecoder().decode([Coin].self, from: (data)!)
            self.coins = coins
           }catch let error {
              print("DEBUG: Failed to decode with error \(error)")
           }
        }.resume()

    }
}

