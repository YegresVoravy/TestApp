//
//  HomeStoreViewModel.swift
//  TestApp
//
//  Created by AlkoFitoNiashka on 06.12.2022.
//

import Foundation


class HomeStoreViewModel: ObservableObject{
    
    static let shared = HomeStoreViewModel()
    
    let homeStore: [HomeStoreModel] = [
        HomeStoreModel(id: 1, isNew: true, title: "Iphone 12", subTitle: "Súper. Mega. Rápido.", picture: "https://img.ibxk.com.br/2020/09/23/23104013057475.jpg?w=1120&h=420&mode=crop&scale=both", isBuy: true),
        HomeStoreModel(id: 2, isNew: false, title: "Samsung Galaxy A71", subTitle: "Súper. Mega. Rápido.", picture: "https://cdn-2.tstatic.net/kupang/foto/bank/images/pre-order-samsung-galaxy-a71-laris-manis-inilah-rekomendasi-ponsel-harga-rp-6-jutaan.jpg", isBuy: true),
        HomeStoreModel(id: 3, isNew: false, title: "Xiaomi Mi 11 ultra", subTitle: "Súper. Mega. Rápido.", picture: "https://static.digit.in/default/942998b8b4d3554a6259aeb1a0124384dbe0d4d5.jpeg", isBuy: true)]
    
    
    init(){}
    
    
}

