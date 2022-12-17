//
//  LowerCell.swift
//  TestApp
//
//  Created by AlkoFitoNiashka on 07.12.2022.
//

import SwiftUI

struct LowerCell: View {
    var body: some View {
        HStack(spacing: 35){
            HStack{
                Circle()
                    .foregroundColor(.white)
                    .frame(width: 5)
                Text("Explorer")
                    .foregroundColor(.white)
                    .font(.custom("helvetica", size: 10)).bold()
            }
            Image(systemName: "case")
                .foregroundColor(.white)
            Image(systemName: "heart")
                .foregroundColor(.white)
            Image(systemName: "person")
                .foregroundColor(.white)
        }
        .frame(maxWidth: .infinity)
        .padding(.vertical)
        .background(Color("lowerCell"))
        .clipShape(RoundedRectangle(cornerRadius: 20))
        .padding(.horizontal)
    }
}

struct LowerCell_Previews: PreviewProvider {
    static var previews: some View {
        LowerCell()
    }
}
