//
//  NavigationBarView.swift
//  TestApp
//
//  Created by AlkoFitoNiashka on 03.12.2022.
//

import SwiftUI

struct MainView: View {
    
    @State var changeView = ChangeView.phones
    @State var detailViewIsPresented = false
    @State var filtersIsOn = false
    @State var searchText = ""
    @State var cartIsPres = false
    
    let layout = [GridItem(.adaptive(minimum: screen.width / 2.4))]
    
    
    var body: some View {

        VStack{
            
            HStack{
                Spacer()
                HStack{
                    Image(systemName: "location")
                        .foregroundColor(Color("mainOrange"))
                    Text("Moscow...")
                        .foregroundColor(Color("lowerCell"))
                    Image(systemName: "chevron.down")
                        .foregroundColor(.gray.opacity(0.6))
                }
                .padding(.leading, 15)
                Spacer()
                
                Button {
                    filtersIsOn.toggle()
                } label: {
                    Image(systemName: "gearshape")
                        .foregroundColor(Color("lowerCell"))
                        .padding(.trailing, 10)
                }

                
            }
            
            HStack{
                Text("Select Category")
                    .foregroundColor(Color("lowerCell"))
                    .font(.title2)
                    .fontWeight(.bold)
                Spacer()
                Button {
                    print("View All")
                } label: {
                    Text("view all")
                        .foregroundColor(Color("mainOrange"))
                }
                .padding()
            }
            .padding()
            .frame(height: screen.height * 0.08)
            
            ScrollView(.horizontal, showsIndicators: false){
                HStack(spacing: 10){
                    VStack{
                        Button {
                            changeView = .phones
                        } label: {
                            
                            ZStack{
                                Circle()
                                    .frame(width: 70)
                                    .foregroundColor(changeView == .phones ? Color("mainOrange") : .white).shadow(color: Color("shadowColor"), radius: 5)
                                Image(systemName: "iphone")
                                    .foregroundColor(Color(changeView == .phones ? "mainGray" : "mainOrange"))
                                    .font(.largeTitle)
                            }
                        }
                        Text("Phones")
                            .foregroundColor(Color("lowerCell"))
                    }
                    
                    VStack{
                        Button {
                            changeView = .computers
                        } label: {
                            ZStack{
                                Circle()
                                    .frame(width: 70)
                                    .foregroundColor(changeView == .computers ? Color("mainOrange") : .white).shadow(color: Color("shadowColor"), radius: 5)
                                Image(systemName: "desktopcomputer")
                                    .foregroundColor(Color(changeView == .computers ? "mainGray" : "mainOrange"))
                                    .font(.largeTitle)
                            }
                        }
                        Text("Computers")
                            .foregroundColor(Color("lowerCell"))
                    }
                    
                    VStack{
                        Button {
                            changeView = .health
                        } label: {
                            ZStack{
                                Circle()
                                    .frame(width: 70)
                                    .foregroundColor(changeView == .health ? Color("mainOrange") : .white).shadow(color: Color("shadowColor"), radius: 5)
                                Image(systemName: "heart")
                                    .foregroundColor(Color(changeView == .health ? "mainGray" : "mainOrange"))
                                    .font(.largeTitle)
                            }
                        }
                        Text("Health")
                            .foregroundColor(Color("lowerCell"))
                    }
                    
                    VStack{
                        Button {
                            changeView = .books
                        } label: {
                            ZStack{
                                Circle()
                                    .frame(width: 70)
                                    .foregroundColor(changeView == .books ? Color("mainOrange") : .white).shadow(color: Color("shadowColor"), radius: 5)
                                Image(systemName: "books.vertical")
                                    .foregroundColor(Color(changeView == .books ? "mainGray" : "mainOrange"))
                                    .font(.largeTitle)
                            }
                        }
                        Text("Books")
                            .foregroundColor(Color("lowerCell"))
                    }
                }
                .padding()
                
            }
            
            
            
            HStack{
                HStack{

                    Button {
                        print("Search")
                    } label: {
                        Image(systemName: "magnifyingglass")
                    }
                    .foregroundColor(Color("mainOrange"))
                    .background(Color.clear)
                    
                    TextField("Search", text: $searchText)

                }
                .padding(7)
                .background(Color.white)
                .clipShape(Capsule())
                
                
                Button {
                    print("...")
                } label: {
                    Image(systemName: "square.grid.2x2")
                }
                .padding(7)
                .foregroundColor(.white)
                .background(Color("mainOrange"))
                .clipShape(Circle())
                

                
            }
            .padding(.horizontal)
            
            ScrollView(.vertical, showsIndicators: true){
                HStack{
                    Text("Hot sales")
                        .font(.title2)
                        .fontWeight(.bold)
                        .foregroundColor(Color("lowerCell"))
                    
                    Spacer()
                    
                    Button {
                        print("see more")
                    } label: {
                        Text("see more")
                            .foregroundColor(Color("mainOrange"))
                    }

                }
                .padding(.horizontal, 15)
                

                
                switch changeView{
                case .phones:
                    ScrollView(.horizontal , showsIndicators: false) {
                        
                        // MARK: Best Sellers
                        HStack(spacing: 20){
                            ForEach(HomeStoreViewModel.shared.homeStore, id: \.id){ item in
                                
                                HomestoreCell(homeStore: item)
                            }
                        }
                        .padding(.leading, 15)

                    }
                    if filtersIsOn == false{
                        
                        HStack{
                            Text("Best Seller")
                                .font(.title2)
                                .fontWeight(.bold)
                                .foregroundColor(Color("lowerCell"))
                            
                            Spacer()
                            
                            Button {
                                print("see more")
                            } label: {
                                Text("see more")
                                    .foregroundColor(Color("mainOrange"))
                            }

                        }
                        .padding(.horizontal, 15)
                        
                        LazyVGrid(columns: layout) {
                            ForEach(BestSellerViewModel.shared.bestSellerArray, id: \.id) { item in
                                
                                BestSellersCell(product: item)
                                    .onTapGesture {
                                        detailViewIsPresented.toggle()
                                    }
                                
                            }
                        }
                        .background(Color.clear)

                    } else if filtersIsOn == true{
                        FiltersView()

                    }
                case .computers:
                    ComputersView()
                case .health:
                    HealthView()
                case .books:
                    BooksView()
                }
                
                
            }
            HStack(spacing: 35){
                HStack{
                    Circle()
                        .foregroundColor(.white)
                        .frame(width: 5)
                    Text("Explorer")
                        .foregroundColor(.white)
                        .font(.custom("helvetica", size: 10)).bold()
                }
                Button {
                    cartIsPres.toggle()
                } label: {
                    ZStack(alignment: .topTrailing){
                        Image(systemName: "cart")
                            .padding(9)
                            .foregroundColor(.white)
                            .cornerRadius(10)
                            .padding(8)

                        ZStack(alignment: .center){
                            Circle()
                                .frame(width: 20)
                                .foregroundColor(.red)

                            Text("\(CartViewModel.shared.positions.count )")
                                .font(.custom("helvetica", size: 10))
                                .foregroundColor(.white)
                            
                        }

                        
                    }
                }
                
                
                Image(systemName: "heart")
                    .foregroundColor(.white)
                Image(systemName: "person")
                    .foregroundColor(.white)
            }
            .frame(maxWidth: .infinity)
            .padding(.vertical)
            .background(Color("lowerCell"))
            .clipShape(RoundedRectangle(cornerRadius: 20))
            .padding(.horizontal)
            
            Spacer()
            
        }
        .background(Color("mainGray"))
        .fullScreenCover(isPresented: $detailViewIsPresented) {
            DetailsView()
        }
        .fullScreenCover(isPresented: $cartIsPres) {
            CartView()
        }
        
    }
}

struct NavigationBarView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
