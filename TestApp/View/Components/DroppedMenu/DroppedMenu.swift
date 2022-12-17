//
//  DroppedMenu.swift
//  TestApp
//
//  Created by AlkoFitoNiashka on 13.12.2022.
//

import SwiftUI

struct DroppedMenu: View {
    
    @State var isOptionPresented: Bool = false
    @Binding var selectedOption: DroppedMenuViewModel?
    
    let placeholder: String
    let options: [DroppedMenuViewModel]
    
    
    var body: some View {
        
        Button {
            withAnimation {
                self.isOptionPresented.toggle()
            }
        } label: {
            HStack{
                Text(selectedOption == nil ? placeholder: selectedOption!.option)
                    .fontWeight(.medium)
                    .foregroundColor(Color("lowerCell"))
                
                Spacer()
                
                Image(systemName: self.isOptionPresented ? "chevron.up" : "chevron.down")
                    .fontWeight(.medium)
                    .foregroundColor(Color("lowerCell"))
                
            }
        }
        .padding()
        .overlay{
            RoundedRectangle(cornerRadius: 5)
                .stroke(.gray, lineWidth: 2)
        }
        .background(Color.white)
        .overlay(alignment: .top) {
            VStack{
                if self.isOptionPresented {
                    Spacer(minLength: 60)
                    DroppedMenuList(option: self.options){ option in
                        self.isOptionPresented = false
                        self.selectedOption = option
                    }
                }
            }
        }
        .padding(.horizontal)
    }
}

