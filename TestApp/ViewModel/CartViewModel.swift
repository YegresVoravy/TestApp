//
//  CartViewModel.swift
//  TestApp
//
//  Created by AlkoFitoNiashka on 15.12.2022.
//

import Foundation
import SwiftUI


class CartViewModel: ObservableObject{
    
    static var shared = CartViewModel()
    
    private init(){}
    
    @Published var positions: [Product] = [Product]()
    
    
    var addedCout = 1
    var fullCost: Int {

        
        var cost = 0
        for prod in positions{
            cost += prod.price * addedCout
            if cost < 0 {cost = 0}
        }
        
        return cost
        
    }
    
    var countOfPositions: Int {
        return positions.count
    }
    


    
    func addToCart(){
        
        let product = Product(title: "Galaxy Note 20 Ultra", cpu: "Exynos 990", camera: "108 + 12 mp", capacity: ["126", "252"], price: 1500, rating: "4.5", sd: "256 GB", ssd: "8 GB", urlImage: "https://avatars.mds.yandex.net/get-mpic/5235334/img_id5575010630545284324.png/orig", count: 1)

        positions.append(product)
    }
    
    func plusCount(count: Int) -> Int{
        addedCout += 1
        return addedCout
    }
    
    func minusCount() -> Int{
        guard addedCout > 0 else {
            addedCout = 0
            return addedCout
        }
        addedCout -= 1
        if addedCout < 0 { addedCout = 0}
        return addedCout
    }
    
}
