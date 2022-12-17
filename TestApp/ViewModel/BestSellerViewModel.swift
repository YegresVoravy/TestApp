//
//  BestSellerViewModel.swift
//  TestApp
//
//  Created by AlkoFitoNiashka on 06.12.2022.
//

import Foundation

class BestSellerViewModel: ObservableObject{
    
    static let shared = BestSellerViewModel()
    
    init(){}
    
    let bestSellerArray: [BestSellerModel] = [
    BestSellerModel(id: 111, isFavorites: true, title: "Samsung Galaxy s20 Ultra", priceWithoutDiscount: 1047, discountPrice: 1500, picture: "https://shop.gadgetufa.ru/images/upload/52534-smartfon-samsung-galaxy-s20-ultra-12-128-chernyj_1024.jpg"),
    BestSellerModel(id: 222, isFavorites: true, title: "Xiaomi Mi 10 Pro", priceWithoutDiscount: 300, discountPrice: 400, picture: "https://mi92.ru/wp-content/uploads/2020/03/smartfon-xiaomi-mi-10-pro-12-256gb-global-version-starry-blue-sinij-1.jpg"),
    BestSellerModel(id: 3333, isFavorites: true, title: "Samsung Note 20 Ultra", priceWithoutDiscount: 1047, discountPrice: 1500, picture: "https://opt-1739925.ssl.1c-bitrix-cdn.ru/upload/iblock/c01/c014d088c28d45b606ed8c58e5817172.jpg?160405904823488"),
    BestSellerModel(id: 4444, isFavorites: true, title: "Motorola One Edge ", priceWithoutDiscount: 300, discountPrice: 400, picture: "https://www.benchmark.rs/assets/img/news/edge1.jpg")
    ]
    
}




