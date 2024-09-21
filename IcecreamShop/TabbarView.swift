//
//  TabbarView.swift
//  IcecreamShop
//
//  Created by Ankita Thakur on 21/02/24.
//

import SwiftUI

struct TabbarView: View {
    @State private var section = 0
    
    init(){
        UITabBar.appearance().backgroundColor = UIColor.white
    }
    var body: some View {
        
        TabView(selection: $section){
            HomeListView()
                .tabItem {
                    Image(systemName: "house.fill")
                    Text("Home")
                    
                }
                .tag(0)
            LoginView()
           // Text("Order")
                .tabItem {
                    Image(systemName: "cart.fill")
                    Text("Order")
                    
                }
                .tag(1)
            SignupView()
           // Text("Wishlist")
                .tabItem {
                    Image(systemName: "heart.fill")
                    Text("Wishlist")
                    
                }
                .tag(2)
            Text("Profile")
                .tabItem {
                    Image(systemName: "person.crop.circle.fill")
                    Text("Profile")
                    
                }
                .tag(3)
        }
        
        //.accentColor(.black)
    }
}

#Preview {
    TabbarView()
}
