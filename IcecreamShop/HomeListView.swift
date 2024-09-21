//
//  HomeListView.swift
//  IcecreamShop
//
//  Created by Ankita Thakur on 26/01/24.
//

import SwiftUI

struct HomeListView: View {
    @State var search = ""
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        VStack{
            // Create Top Header design
            
  HStack{
      Button(action: {
          dismiss()
      }, label: {
                    ZStack{
                        Circle()
                            .foregroundColor(Color("TheamColor"))
                            .frame(width: 35,height: 35)
                        Image(systemName: "square.grid.3x3")
                            .foregroundColor(.white)
                    }
                    .padding(10)
                })
                Spacer(minLength: 0)
                
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    ZStack{
                        Circle()
                            .foregroundColor(.black)
                            .frame(width: 35,height: 35)
                        Image(systemName: "cart")
                            .foregroundColor(.white)
                    }
                    // .padding(10)
                })
//                
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Image("profile")
                    ZStack{
                        Circle()
                            .foregroundColor(.black)
                            .frame(width: 35,height: 35)
                        Image(systemName: "person.crop.circle.fill")
                            .font(.title)
                            .foregroundColor(.white)
                    }
                    .padding(10)
                })
            }
            // Header Title and search feature adding
            HStack{
                VStack{
                    Text("Ice Creams")
                        .font(.largeTitle)
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    Text("Tastes make it a beloved treat worldwide")
                        .foregroundColor(.gray)
                    
                    HStack(spacing:15){
                        Image(systemName: "magnifyingglass")
                            .foregroundColor(.gray)
                        TextField("What would you like to try?", text: $search)
                        
                    }
                    .padding(.vertical)
                    .padding(.horizontal)
                    .background(Color("BgColor"))
                    .clipShape(Capsule())
                    .padding(.leading,10)
                    .padding(.trailing,10)
                    .padding(.top,10)
                    .frame(height: 60)
                    // List View (TableView)
                    NavigationView{
                        List{
                            ForEach(product) { prod in
                                Button(action: { print("----> " + prod.name)
                                    
                                }) {
                                    // handle row section here
                                    ProductRowView(product: prod)
                                }
                                .listRowInsets(.init(top: 0, leading: 0, bottom: 8, trailing: 0))
                                .listRowBackground(RoundedRectangle(cornerRadius: 10)
                                    .foregroundColor(.white))
                                .listRowSeparator(.hidden)
                            }
                            
                        }
                        .scrollContentBackground(.hidden)
                        .background(.white)
                    }
                }
            }
        }
    }
}

#Preview {
    HomeListView()
}
