//
//  DropDownMenuListRow.swift
//  TestApp
//
//  Created by AlkoFitoNiashka on 13.12.2022.
//

import SwiftUI

struct DropDownMenuListRow: View {
    
    let option: DroppedMenuViewModel
    
    let onSelectedAction: (_ option: DroppedMenuViewModel) -> Void
    
    var body: some View {
        
        Button {
            self.onSelectedAction(option)
        } label: {
            Text(option.option)
                .frame(maxWidth: .infinity, alignment: .leading)
        }
        .foregroundColor(Color("lowerCell"))
        .padding(.vertical, 5)
        .padding(.horizontal)

        
        
    }
}
