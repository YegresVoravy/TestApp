//
//  DetailsModel.swift
//  TestApp
//
//  Created by AlkoFitoNiashka on 14.12.2022.
//

import Foundation
import SwiftUI

struct Product: Identifiable{
    
    let id = UUID()

    let title:String
    let cpu: String
    let camera: String
    let capacity: [String]
    let price: Int
    let rating: String
    let sd: String
    let ssd: String
    let urlImage: String
    var count: Int
}

