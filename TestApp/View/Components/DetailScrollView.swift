//
//  DetailScrollView.swift
//  TestApp
//
//  Created by AlkoFitoNiashka on 14.12.2022.
//

import SwiftUI

struct DetailScrollView: View {
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false){
            HStack{
                
                ForEach(DetailScrollViewModel.shared.sectionData) { item in
                    DetailScrollViewCell(scroll: item)
                }
                .padding(.vertical)
            }
            
            
        }
    }
}

struct DetailScrollView_Previews: PreviewProvider {
    static var previews: some View {
        DetailScrollView()
    }
}
