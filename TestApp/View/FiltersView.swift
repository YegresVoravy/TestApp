//
//  FiltersView.swift
//  TestApp
//
//  Created by AlkoFitoNiashka on 10.12.2022.
//

import SwiftUI

struct FiltersView: View {
    
    @State private var selctedPhone: DroppedMenuViewModel? = nil
    @State private var selctedPrice: DroppedMenuViewModel? = nil
    @State private var selctedSize: DroppedMenuViewModel? = nil
    
    
    @Environment(\.presentationMode) var presentationMode
    
    @State var phoneModel = ["Samsung","iPhone","Xiaomi"]
    
    var body: some View {
        VStack(alignment: .leading){
            HStack{
                ZStack{
                    Button {
                        presentationMode.wrappedValue.dismiss()
                    } label: {
                        Image(systemName: "multiply")
                            .padding()
                            .foregroundColor(.white)
                            .background(Color("lowerCell"))
                            .cornerRadius(10)
                        
                        Spacer()
                        
                        Text("Filter options")
                            .foregroundColor(Color("lowerCell"))
                            .fontWeight(.semibold)
                        
                        Spacer()
                        
                        Button {
                            presentationMode.wrappedValue.dismiss()
                        } label: {
                            Text("Done")
                                .foregroundColor(.white)
                        }
                        .padding(.vertical, 7)
                        .padding(.horizontal, 15)
                        .background(Color("mainOrange"))
                        .cornerRadius(10)

                    }
                    .padding(.horizontal)
                }
            }
            
            VStack(alignment: .leading){
                
                Text("Brand")
                    .padding(.horizontal)
                    .fontWeight(.semibold)
                
                DroppedMenu(selectedOption: self.$selctedPhone, placeholder: "Select phone", options: DroppedMenuViewModel.allPhones)
                
                Text("Price")
                    .padding(.horizontal)
                    .fontWeight(.semibold)
                
                DroppedMenu(selectedOption: self.$selctedPrice, placeholder: "Select Price", options: DroppedMenuViewModel.allPrices)
                
                Text("Size")
                    .padding(.horizontal)
                    .fontWeight(.semibold)
                
                DroppedMenu(selectedOption: self.$selctedPrice, placeholder: "Select Size", options: DroppedMenuViewModel.singleSize)
                
            }
            .padding(.vertical)
            
        }
        .padding(10)

    }
}

struct FiltersView_Previews: PreviewProvider {
    static var previews: some View {
        FiltersView()
    }
}
