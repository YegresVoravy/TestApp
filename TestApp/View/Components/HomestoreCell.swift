//
//  HomestoreCell.swift
//  TestApp
//
//  Created by AlkoFitoNiashka on 05.12.2022.
//

import SwiftUI

struct HomestoreCell: View {
    
    let homeStore: HomeStoreModel
    
    
    @State var currentHomeStorePage = 0
    @State var currentOffSetY: CGFloat = 0
    @State var currentDrugOffSetY: CGFloat = 0
    
    var body: some View {
            
            



//                AsyncImage(url:URL(string:  homeStore.picture)){ image in
//                    image.resizable()
//                } placeholder: {
//                    ProgressView()
//                }
//                .frame( height: screen.height * 0.3)
//                .aspectRatio(contentMode: .fill)
//                .offset(x: screen.width * 0.3, y: screen.height * 0.3)
        VStack(alignment: .leading, spacing: 10){
                        HStack{
                            Text("NEW")
                                .padding(2)
                                .frame(width: 30, height: 30)
                                .font(.custom("helvetica", size: 8))
                                .foregroundColor(.white).bold()
                                .background(Color("mainOrange"))
                                .cornerRadius(25)
                            Spacer()
                        }
                        .padding(.top, 10)
                        Spacer()
                        
                        VStack{
                            Text("\(homeStore.title)")
                                .font(.headline).bold()
                                .foregroundColor(.white)
                            Text("\(homeStore.subTitle)")
                                .font(.custom("helvetica", size: 8))
                                .foregroundColor(.white)
                        }
                        
                        Spacer()
                        
                        Button {
                            print("Buy Now")
                        } label: {
                            Text("Buy now!")
                                .font(.custom("helvetica", size: 15))
                                .foregroundColor(.black).bold()
                        }
                        .padding(5)
                        .padding(.horizontal)
                        .background(Color.white)
                        .cornerRadius(5)
                        .padding(.bottom, 15)

                    }
            .padding()
            .frame(width: screen.width * 0.85, height: screen.height * 0.19)
            .background(AsyncImage(url:URL(string:  homeStore.picture)){ image in
                image.resizable()
            } placeholder: {
                ProgressView()
            }
                .background(Color.black)
            .aspectRatio(contentMode: .fill)
            .frame(width: screen.width / 3, height: screen.height / 3)
            .offset(x: 110, y: 110))
            .padding()
            .background(Color.black)
            .cornerRadius(15)
        
            Spacer()

    }
    
    
}
