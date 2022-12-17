//
//  BestSellersCell.swift
//  TestApp
//
//  Created by AlkoFitoNiashka on 06.12.2022.
//

import SwiftUI

struct BestSellersCell: View {
    
    let product: BestSellerModel
    let round = screen.width * 0.47
    
    var body: some View {
        VStack{
            
                AsyncImage(url: URL(string: product.picture)){ image in
                    image.resizable()
                } placeholder: {
                    ProgressView()
                }
                .aspectRatio(contentMode: .fill)
                .frame(width: round * 0.8, height: round * 0.8)
                
            
            VStack(alignment: .leading){
                HStack{
                    Text("$\(product.priceWithoutDiscount)")
                        .foregroundColor(.black)
                        .font(.custom("helvetica", size: 20)).bold()
                    Text("$\(product.discountPrice)")
                        .foregroundColor(Color.gray)
                        .font(.custom("helvetica", size: 10))
                    
                    Spacer()
                }
                    Text(product.title)
                        .foregroundColor(.black)
                        .font(.custom("helvetica", size: 10))
            }
            .padding(.horizontal, 20)
        }
        .frame(width: round, height: round * 1.1)
        .background(Color.white)
        .cornerRadius(15)
        .overlay(alignment: .topTrailing) {
            Image(systemName: "heart")
                .padding(7)
                .foregroundColor(Color("mainOrange"))
                .background(Color.white)
                .clipShape(Circle()).shadow(color: Color("shadowColor"), radius: 5)
                .padding(15)
        }
    }
}

struct BestSellersCell_Previews: PreviewProvider {
    static var previews: some View {
        BestSellersCell(product: BestSellerModel(id: 111, isFavorites: true, title: "Samsung Galaxy s20 Ultra", priceWithoutDiscount: 1047, discountPrice: 1500, picture: "https://shop.gadgetufa.ru/images/upload/52534-smartfon-samsung-galaxy-s20-ultra-12-128-chernyj_1024.jpg"))
    }
}
