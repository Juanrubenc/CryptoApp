//
//  TopMoverView.swift
//  Crypto
//
//  Created by Juan Ruben Castaneda Nino on 14/01/23.
//

import SwiftUI

struct TopMoverView: View {
    @StateObject var viewModel: HomeviewModel
    var body: some View {
        VStack(alignment: .leading) {
            Text("Top Movers")
                .font(.headline)
            
            ScrollView(.horizontal){
                HStack (spacing: 16){
                    ForEach(0 ..< 5 , id: \.self) { _ in
                        TopMoversItemView__()
                    }
                }
            }
        }
        .padding(10)
    }
}


