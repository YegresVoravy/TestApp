//
//  CartCellView.swift
//  TestApp
//
//  Created by AlkoFitoNiashka on 15.12.2022.
//

import SwiftUI

struct CartCellView: View {

    
    @State var count = 1
    let product: Product
    
    var body: some View {
        HStack{
            AsyncImage(url: URL(string: "\(product.urlImage)")){ image in
                image.resizable()
            } placeholder: {
                ProgressView()
            }
            .padding(8)
            .aspectRatio(contentMode: .fit)
            .frame(width: screen.width * 0.23, height: screen.width * 0.23)
            .background(Color.white)
            .cornerRadius(15)
            
            
            VStack{
                Text("\(product.title)")
                    .font(.headline)
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
                
                Text("$\(product.price * count).00")
                    .foregroundColor(Color("mainOrange"))
            }
            
            VStack{
                
                Button {
                    count -= 1
                    CartViewModel.shared.minusCount()
                    print(CartViewModel.shared.addedCout)
                } label: {
                    Image(systemName: "minus")
                        .foregroundColor(.white)
                }
                .padding(5)
                .padding(.top, 5)
                
                Text("\(count)")
                    .foregroundColor(.white)

                
                Button {
                    count += 1
                    CartViewModel.shared.plusCount()
                    print(CartViewModel.shared.addedCout)
                } label: {
                    Image(systemName: "plus")
                        .foregroundColor(.white)
                }
                .padding(2)
                .padding(.bottom, 3)
                

            }
            .padding(1)
            .background(Color.gray.opacity(0.2))
            .cornerRadius(20)
        }
        .background(Color("lowerCell"))
        .padding(.vertical)
        
        
        
        
    }
}

