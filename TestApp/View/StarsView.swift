//
//  StarsView.swift
//  TestApp
//
//  Created by AlkoFitoNiashka on 14.12.2022.
//

import SwiftUI

struct StarsView: View {
    
    @State var rating = 1
    
    
    var body: some View {
        ZStack{
            starsView
                .overlay {

                    overlayView.mask(starsView)
                    
            }
            
        }
        
    }
    
    private var overlayView: some View{
        
        GeometryReader{ geometry in
            ZStack(alignment: .leading){
                Rectangle()
                    .foregroundColor(.yellow)
                    .frame(width: CGFloat(rating) / 5 * geometry.size.width)
                
                
            }
            
        }
        .allowsHitTesting(false)
        
        
    }
    
    private var starsView: some View {
        HStack{
            ForEach(1..<6) { index in
                Image(systemName: "star.fill")
                    .foregroundColor(.gray)
                    .onTapGesture {
                        withAnimation(.easeInOut) {
                            
                            rating = index
                        }

                    }
            }
        }
    }
    
    
}

