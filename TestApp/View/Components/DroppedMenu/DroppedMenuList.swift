//
//  DroppedMenuList.swift
//  TestApp
//
//  Created by AlkoFitoNiashka on 13.12.2022.
//

import SwiftUI

struct DroppedMenuList: View {
    
    let option: [DroppedMenuViewModel]
    let onSelectedAction: (_ option: DroppedMenuViewModel) -> Void
    
    var body: some View {
        
        ScrollView{
            
            LazyVStack(alignment: .leading, spacing: 2) {
                ForEach(option) { option in
                    
                    DropDownMenuListRow(option: option, onSelectedAction: self.onSelectedAction)
                    
                    
                }
            }
            
        }
        .frame(height: 200)
        .padding(.vertical, 5)
        .overlay {
            RoundedRectangle(cornerRadius: 5)
                .stroke(.gray, lineWidth: 2)
        }
        
        
        
    }
}


