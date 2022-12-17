//
//  DetailScrollView.swift
//  TestApp
//
//  Created by AlkoFitoNiashka on 14.12.2022.
//

import SwiftUI

struct DetailScrollViewCell: View {
    var scroll: DetailsScrollModel
    var body: some View {
        
        AsyncImage(url: URL(string: scroll.image)){ image in
            image.resizable()
        } placeholder: {
            ProgressView()
        }
        .padding(8)
        .aspectRatio(contentMode: .fit)
        .frame(width: screen.width * 0.6, height: screen.width * 0.6)
        .background(Color.white)
        .cornerRadius(15)
        .shadow(color: Color.gray.opacity(0.7), radius: 3)
        .padding(.horizontal)
    }
}

