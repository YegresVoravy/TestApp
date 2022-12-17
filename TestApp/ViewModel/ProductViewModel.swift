//
//  ProductModel.swift
//  TestApp
//
//  Created by AlkoFitoNiashka on 16.12.2022.
//

import Foundation

class ProductViewModel: ObservableObject{
    
    static let shared = ProductViewModel()
    
    private init() {}
    
    
    

    var cartProduct = Product(title: "Galaxy Note 20 Ultra", cpu: "Exynos 990", camera: "108 + 12 mp", capacity: ["126", "252"], price: 1500, rating: "4.5", sd: "256 GB", ssd: "8 GB", urlImage: "https://avatars.mds.yandex.net/get-mpic/5235334/img_id5575010630545284324.png/orig", count: 1)
    
    
    
}

