//
//  DetailsView.swift
//  TestApp
//
//  Created by AlkoFitoNiashka on 14.12.2022.
//

import SwiftUI

struct DetailsView: View {
    

    @Environment(\.presentationMode) var presentationMode
    @State var isFavorite = true
    @State var detEnum = DetailsEnum.shop
    @State var colorIsSelected = 1
    @State var isSelectedMemory = 1
    @State var cartIsPresented = false
    @State var inCart = 0
    
    var body: some View {
        VStack(alignment: .leading){
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
                
                Text("Product Details")
                    .foregroundColor(Color("lowerCell"))
                    .font(.title3)
                    .fontWeight(.semibold)
                
                Spacer()
                
                Button {
                    cartIsPresented.toggle()
                } label: {
                    ZStack(alignment: .topTrailing){
                        Image(systemName: "cart")
                            .padding(9)
                            .foregroundColor(.white)
                            .background(Color("mainOrange"))
                            .cornerRadius(10)
                            .padding(8)

                        ZStack(alignment: .center){
                            Circle()
                                .frame(width: 20)
                                .foregroundColor(.red)

                            Text("\(inCart)")
                                .font(.custom("helvetica", size: 10))
                                .foregroundColor(.white)
                            
                        }

                        
                    }
                }
                
                
            }
            .padding(.horizontal)
            
            DetailScrollView()
            
            VStack{
                
                HStack{
                    Text("\(ProductViewModel.shared.cartProduct.title)")
                        .foregroundColor(Color("lowerCell"))
                        .font(.title2)
                        .fontWeight(.semibold)
                    
                    Spacer()
                    
                    Button {
                        isFavorite.toggle()
                    } label: {
                        Image(systemName: "heart")
                            .padding(9)
                            .foregroundColor(.white)
                            .background(isFavorite ? Color("lowerCell") : Color("mainOrange"))
                            .cornerRadius(10)
                    }
                }
                HStack{
                    StarsView()
                    Spacer()
                }
                
                HStack(alignment: .center){
                    VStack{
                        Button {
                            detEnum = .shop
                        } label: {
                            Text("Shop")
                                .foregroundColor(detEnum == .shop ? Color("lowerCell") : Color.gray)
                        }
                        RoundedRectangle(cornerRadius: 5)
                            .frame(width: screen.size.height / 10, height: 3)
                            .foregroundColor(detEnum == .shop ? Color("mainOrange") : Color.clear)
                        
                    }
                    
                    Spacer()
                    
                    VStack{
                        Button {
                            detEnum = .details
                        } label: {
                            Text("Details")
                                .foregroundColor(detEnum == .details ? Color("lowerCell") : Color.gray)
                        }
                        RoundedRectangle(cornerRadius: 5)
                            .frame(width: screen.size.height / 10, height: 3)
                            .foregroundColor(detEnum == .details ? Color("mainOrange") : Color.clear)
                        
                    }
                    
                    Spacer()
                    
                    VStack{
                        Button {
                            detEnum = .features
                        } label: {
                            Text("Features")
                                .foregroundColor(detEnum == .features ? Color("lowerCell") : Color.gray)
                        }
                        RoundedRectangle(cornerRadius: 5)
                            .frame(width: screen.size.height / 10, height: 3)
                            .foregroundColor(detEnum == .features ? Color("mainOrange") : Color.clear)
                        
                    }
                }
                .padding(.top, 8)
                
                HStack{
                    VStack{
                        Image(systemName: "cpu")
                            .foregroundColor(.gray)
                            .font(.custom("", size: 20))
                        Text("\(ProductViewModel.shared.cartProduct.cpu)")
                            .foregroundColor(.gray)
                            .font(.custom("helvetica", size: 12))
                    }
                    .padding(.horizontal)
                    
                    VStack{
                        Image(systemName: "camera")
                            .foregroundColor(.gray)
                            .font(.custom("", size: 20))
                        Text("\(ProductViewModel.shared.cartProduct.camera)")
                            .foregroundColor(.gray)
                            .font(.custom("helvetica", size: 12))
                    }
                    .padding(.horizontal)
                    
                    VStack{
                        Image(systemName: "memorychip")
                            .foregroundColor(.gray)
                            .font(.custom("", size: 20))
                        Text("\(ProductViewModel.shared.cartProduct.ssd)")
                            .foregroundColor(.gray)
                            .font(.custom("helvetica", size: 12))
                    }
                    .padding(.horizontal)
                    
                    VStack{
                        Image(systemName: "sdcard")
                            .foregroundColor(.gray)
                            .font(.custom("", size: 20))
                        Text("\(ProductViewModel.shared.cartProduct.sd)")
                            .foregroundColor(.gray)
                            .font(.custom("helvetica", size: 12))
                    }
                    .padding(.horizontal)
                    
                }
                .padding(.vertical, 8)
                
                HStack{
                    Text("Select color and opacity")
                        .font(.title3)
                        .fontWeight(.semibold)
                    Spacer()
                }
                
                HStack(spacing: 25){
                    Button {
                        colorIsSelected = 1
                    } label: {
                        ZStack{
                            Circle()
                                .frame(width: screen.width / 8)
                                .foregroundColor(Color("lowerCell"))
                            Image(systemName: "checkmark")
                                .foregroundColor(colorIsSelected == 1 ? .white : .clear)
                        }
                    }
                
                    
                    Button {
                        colorIsSelected = 2
                    } label: {
                        ZStack{
                            Circle()
                                .frame(width: screen.width / 8)
                                .foregroundColor(Color.brown)
                            Image(systemName: "checkmark")
                                .foregroundColor(colorIsSelected == 2 ? .white : .clear)
                        }
                    }


                    Button {
                        isSelectedMemory = 1
                    } label: {
                        Text("\(ProductViewModel.shared.cartProduct.capacity[0]) GB")
                            .font(.footnote)
                    }
                    .padding(.horizontal)
                    .padding(.vertical, 5)
                    .foregroundColor(isSelectedMemory == 1 ? .white : .gray)
                    .background(isSelectedMemory == 1 ? Color("mainOrange") : Color.clear )
                    .cornerRadius(5)
                    .padding(.leading, 10)
                    
                    
                    
                    Button {
                        isSelectedMemory = 2
                    } label: {
                        Text("\(ProductViewModel.shared.cartProduct.capacity[1]) GB")
                            .font(.footnote)
                    }
                    .padding(.horizontal)
                    .padding(.vertical, 5)
                    .foregroundColor(isSelectedMemory == 2 ? .white : .gray)
                    .background(isSelectedMemory == 2 ? Color("mainOrange") : Color.clear )
                    .cornerRadius(5)
                }

                Button {
                    CartViewModel.shared.addToCart()
                    print(CartViewModel.shared.positions.count)
                    inCart += 1
                } label: {
                    HStack{
                        Text("Add to Cart")
                            .foregroundColor(.white)

                        Spacer()
                        
                        Text("$\(ProductViewModel.shared.cartProduct.price)")
                            .foregroundColor(.white)
                    }
                    .padding(.horizontal)

                }
                .padding(15)
                .background(Color("mainOrange"))
                .fontWeight(.semibold)
                .frame(maxWidth: .infinity)
                .cornerRadius(10)
                .padding(.top)
            }
            .padding(10)
            .frame(width: screen.width * 0.95)
            .background(Color.white)
            .cornerRadius(15)
            .shadow(color: .gray.opacity(0.8), radius: 4)
            .padding(.horizontal)
        }
        .padding().ignoresSafeArea()
        .background(Color.white)
        .fullScreenCover(isPresented: $cartIsPresented, content: {
            CartView()
        })

        
    }
    
    
}

