//
//  CartView.swift
//  TestApp
//
//  Created by AlkoFitoNiashka on 15.12.2022.
//

import SwiftUI

struct CartView: View {
    
    @Environment(\.presentationMode) var presentationMode
    @State var positionCount = 0
    @State var fullCount = CartViewModel.shared.positions.count
    
    var body: some View {
        VStack{
            HStack{
                Button {
                    presentationMode.wrappedValue.dismiss()
                } label: {
                    Image(systemName: "chevron.left")
                        .padding(9)
                        .foregroundColor(.white)
                        .background(Color("lowerCell"))
                        .cornerRadius(10)
                }
                
                Spacer()
                
                Text("Add address")
                    .foregroundColor(Color("lowerCell"))
                    .font(.title3)
                    .fontWeight(.semibold)
                
                Button {
                    
                } label: {
                    Image(systemName: "location")
                        .padding(9)
                        .foregroundColor(.white)
                        .background(Color("mainOrange"))
                        .cornerRadius(10)
                }
                
                
            }
            .padding(.horizontal)
            
            HStack{
                
                Text("My Cart")
                    .padding()
                    .foregroundColor(Color("lowerCell"))
                    .font(.largeTitle)
                    .fontWeight(.bold)
                
                Spacer()
                
            }
            .padding(.horizontal)
            
            VStack{
                
                ScrollView(.vertical, showsIndicators: false) {
                    ForEach(CartViewModel.shared.positions) { position in
                        
                        CartCellView(product: position)
                        
                    }
                }
                .frame(width: screen.width * 0.8, height: screen.height * 0.45)
                .background(Color("lowerCell"))
                .padding()
                
                
                Rectangle()
                    .foregroundColor(.gray.opacity(0.6))
                    .frame(maxWidth: .infinity)
                    .frame(height: 1)
                
                VStack{
                    HStack{
                        VStack(alignment: .leading){
                            Text("Total")
                                .foregroundColor(.white)
                                .font(.footnote)
                                .padding(8)
                            
                            
                            
                            Text("Delivery")
                                .foregroundColor(.white)
                                .font(.footnote)
                                .padding(8)
                            
                            
                            
                        }
                        
                        Spacer()
                        
                        VStack(alignment: .leading){
                            
                            Text("$\(CartViewModel.shared.fullCost) us")
                                .foregroundColor(.white)
                                .font(.footnote)
                                .fontWeight(.bold)
                                .padding(8)
                            
                            Text("Free")
                                .foregroundColor(.white)
                                .font(.footnote)
                                .fontWeight(.bold)
                                .padding(8)
                            
                        }
                        .frame(width: screen.width * 0.25)
                    }
                    
                }
                .padding(.horizontal)
                
                Button {
                    print("CheckOut")
                } label: {
                    Text("Checkout")
                }
                .padding()
                .frame(width: screen.width * 0.85)
                .foregroundColor(.white)
                .background(Color("mainOrange"))
                .cornerRadius(10)
                .padding(.vertical, 20)

            }
            .background(Color("lowerCell"))
            .cornerRadius(20)
            
            
            
        }
        .padding()
        .background(Color.white.ignoresSafeArea())
        
    }
}

