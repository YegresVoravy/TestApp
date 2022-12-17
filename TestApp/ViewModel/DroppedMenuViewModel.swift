//
//  DroppedMenu.swift
//  TestApp
//
//  Created by AlkoFitoNiashka on 13.12.2022.
//

import Foundation

struct DroppedMenuViewModel: Identifiable, Hashable{
    
    let id = UUID().uuidString
    let option: String
    
}


extension DroppedMenuViewModel{
    static let singlePhone: DroppedMenuViewModel = DroppedMenuViewModel(option: "Samsung")
    static let allPhones: [DroppedMenuViewModel] = [DroppedMenuViewModel(option: "Samsung"), DroppedMenuViewModel(option: "iPhone"), DroppedMenuViewModel(option: "Xiaomi")]
    
    static let singlePrice: DroppedMenuViewModel = DroppedMenuViewModel(option: "300-500")
    static let allPrices: [DroppedMenuViewModel] = [DroppedMenuViewModel(option: "300-500"), DroppedMenuViewModel(option: "500-2000"), DroppedMenuViewModel(option: "2000-5000"), DroppedMenuViewModel(option: "5000-10000")]
    
    static let singleSize: [DroppedMenuViewModel] = [DroppedMenuViewModel(option: "4.5 to 5.5 inches")]
    
}

