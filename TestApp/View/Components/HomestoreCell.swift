//
//  HomestoreCell.swift
//  TestApp
//
//  Created by AlkoFitoNiashka on 05.12.2022.
//

import SwiftUI

struct HomestoreCell: View {
    
    let homeStore = HomeStoreViewModel.shared.homeStore
    
    
    @State var currentHomeStorePage = 0
    @State var currentOffSetY: CGFloat = 0
    @State var currentDrugOffSetY: CGFloat = 0
    
    var body: some View {
            
            
            VStack(alignment: .leading){
                        Text("NEW")
                            .padding(2)
                            .frame(width: 30, height: 30)
                            .font(.custom("helvetica", size: 8))
                            .foregroundColor(.white).bold()
                            .background(Color("mainOrange"))
                            .cornerRadius(25)

                
                HStack{
                    VStack(alignment: .leading){
                        Text("\(homeStore[currentHomeStorePage].title)")
                            .font(.custom("helvetica", size: 25)).bold()
                            .foregroundColor(.white)
                        Text("\(homeStore[currentHomeStorePage].subTitle)")
                            .font(.custom("helvetica", size: 8))
                            .foregroundColor(.white)
                        Spacer()
                        Button {
                            print("Buy Now")
                        } label: {
                            Text("Buy now!")
                                .font(.custom("helvetica", size: 15))
                                .foregroundColor(.black).bold()
                        }
                        .padding(5)
                        .padding(.horizontal, 20)
                        .background(Color.white)
                        .cornerRadius(15)

                    }
                    Spacer()
                }
            }
            .padding()
            .frame(width: screen.width * 0.9, height: screen.height * 0.2)
            .background(AsyncImage(url:URL(string:  homeStore[currentHomeStorePage].picture)){ image in
                image.resizable()
            } placeholder: {
                ProgressView()
            })
            .cornerRadius(15)
            .offset(x: currentOffSetY * 1)
            .offset(x: currentDrugOffSetY)
            .gesture(
                DragGesture()
                    .onChanged({ value in
                            guard currentDrugOffSetY >= 0 else {
                                return currentDrugOffSetY = 0
                            }
                            guard currentHomeStorePage < (homeStore.count - 1) else {
                                return currentHomeStorePage = 0
                            }
                            
                            currentDrugOffSetY = value.translation.width
                            currentHomeStorePage += 1
                    })
                    .onEnded({ value in
                        withAnimation(.spring()) {
                            
                            currentDrugOffSetY = 0



                        }

                    })
            )
            Spacer()

    }
    
    
}

struct HomestoreCell_Previews: PreviewProvider {
    static var previews: some View {
        HomestoreCell()
    }
}
