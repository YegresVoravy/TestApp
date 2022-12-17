//
//  DetailScrollViewModel.swift
//  TestApp
//
//  Created by AlkoFitoNiashka on 16.12.2022.
//

import Foundation

class DetailScrollViewModel: ObservableObject{
    
    static let shared = DetailScrollViewModel()
    
    private init() {}
    
    let sectionData = [DetailsScrollModel(image: "https://avatars.mds.yandex.net/get-mpic/5235334/img_id5575010630545284324.png/orig"), DetailsScrollModel(image: "https://www.manualspdf.ru/thumbs/products/l/1260237-samsung-galaxy-note-20-ultra.jpg")]
    
    
}

