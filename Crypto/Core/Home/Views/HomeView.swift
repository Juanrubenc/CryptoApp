//
//  SwiftUIView.swift
//  Crypto
//
//  Created by Juan Ruben Castaneda Nino on 14/01/23.
//

import SwiftUI

struct HomeView: View {
    @StateObject var viewModel = HomeviewModel()
    
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false){
                
                //Top Movers View
                TopMoverView()
                
                Divider()
                //All Coins Table
                
                AllCoinsView(viewModel: viewModel)
            }
            .navigationTitle("Live Prices")
        }
    }
}

